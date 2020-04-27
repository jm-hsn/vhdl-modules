----------------------------------------------------------------------------------
-- Company: The Hong Kong Polytechnic University
-- Engineer: Alexandr Melnikov
-- 
-- Create Date:    16:19:30 02/20/2017 
-- Design Name: 
-- Module Name:    ethernet_transceiver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created

-- UDP echo-server design uses on-board Ethernet port to create a data-link between FPGA board
-- Nexys 4 DDR and MatLAB. Echo-server is capable of reception and transmission data packets
-- using ARP and UDP protocols.
-- MAC address of FPGA board: 00:18:3e:01:ff:71
-- IP4 address of FPGA board: 192.168.1.10
-- Port number used in the design: 58210
-- The echo server will reply back to any data server, which uses correct IP4 address and Port number.
-- MAC address of the board is made discoverable for the data server via ARP protocol
-- This Echo-server design doesn't use any input or output FIFO's as elesticity buffers,
-- both in- and outgoing data packets are parsed/assembled in parallel with Rx/Tx processes,
-- which allows better resource utilisation at the price of more complex design architecture. 

-- Additional Comments: 
-- Transceiver block is the Top-level block of the Ethernet transceiver design, implementing 
-- the VHDL UDP echo-server.
-- Transceiver block itself handles the Power-On Reset operation along with subsequent Hardware Resets
-- on request from the user.
-- Apart from that it incorporates lower-level modules handling different functions required for the echo-server
-- operations: Receiver, Transmitter, Serial Management Interface, Memory and Clock Modules
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ethernet_transceiver2 is
	 Generic (M_clk2_5mhz1: integer := 20; -- divisor for 2.5MHz clock
				 M_clk2_5mhz2: integer := 10; -- divisor for shifted 2.5MHz clock 
				 N : integer := 22;           -- divisor for debouncing circuit 
				 ADDR_WIDTH : integer := 10;  -- RAM's address width
				 DATA_WIDTH : integer := 8;  -- RAM's data width (1024x1byte)
				 FIFO_WIDTH : integer := 32);
    Port ( clk100mhz : in  STD_LOGIC;
           eth_rxd : inout  STD_LOGIC_VECTOR (1 downto 0);
           eth_txd : inout  STD_LOGIC_VECTOR (1 downto 0);
           eth_crsdv : inout  STD_LOGIC;
			  eth_txen : inout  STD_LOGIC;
           eth_rxerr : inout  STD_LOGIC;
			  eth_mdc : out  STD_LOGIC;
           eth_mdio : inout  STD_LOGIC;
           eth_refclk : out  STD_LOGIC;
           eth_rstn : inout  STD_LOGIC;
			  -- display signals for ARP and UDP packets
			  led16_b : out  STD_LOGIC;
			  led16_g : out  STD_LOGIC;
			  led16_r : out  STD_LOGIC;
			  led17_b : out  STD_LOGIC;
			  led17_g : out  STD_LOGIC;
			  led17_r : out  STD_LOGIC;
			  -- outputs for debugging
--			  mode0 : out std_logic;
--			  mode1 : out std_logic;
--			  mode2 : out std_logic;
--			  refclk : out std_logic;
--			  rxerr : out std_logic;
--			  txd : out  STD_LOGIC_VECTOR (1 downto 0);
--			  txen : out  STD_LOGIC;
			  -- Reset and SMI inputs/outputs
			  btn_reset : in std_logic;
			  led : out std_logic_vector (15 downto 0);
			  --sw : in std_logic_vector (4 downto 0);
			  
			  
			  udp_packet_checksum : in STD_LOGIC_VECTOR (15 downto 0);
			  
			  udp_packet_recieved : out std_logic;
			  udp_packet_sending : out std_logic;
			  fifo_write_data : out std_logic_vector(FIFO_WIDTH-1 downto 0);
			  fifo_write_enable : out std_logic;
			  fifo_write_full : in std_logic;
			  
			  fifo_read_data : in std_logic_vector(FIFO_WIDTH-1 downto 0);
			  fifo_read_enable : out std_logic;
			  fifo_read_length : in STD_LOGIC_VECTOR (15 downto 0); -- max. 1472
			  fifo_read_empty : in std_logic;
			  
			  ip : in std_logic_vector(4 downto 0)
			  
			  );
end ethernet_transceiver2;

architecture Behavioral of ethernet_transceiver2 is
-- CLOCKS
	-- main clock
signal b_clk100mhz : std_logic;
signal clk50mhz : std_logic; 		  -- inner signal for ETH_REFCLK (read Rx on falling edge)
signal b_clk50mhz : std_logic; 		  -- inner signal for ETH_REFCLK (read Rx on falling edge)
signal clk50mhz_shift : std_logic; -- shifted 50mhz clock signal for write Tx operation
signal b_clk50mhz_shift : std_logic; -- shifted 50mhz clock signal for write Tx operation
	-- mdio clock
signal clk2_5mhz : std_logic;       -- MDC clock
signal b_clk2_5mhz : std_logic;       -- MDC clock
signal clk2_5mhz_shift : std_logic; -- shifted mdio clock for read and write MDIO
signal b_clk2_5mhz_shift : std_logic; -- shifted mdio clock for read and write MDIO

-- SIGNALS
-- ******* process transceiver (only responsible for Hardware Reset) ********--
type state_type is (idle, power_on, reset);
signal state : state_type := idle;
constant MODE : std_logic_vector (2 downto 0) := "111"; -- all capable; auto-negotiation enabled
constant PHYAD : std_logic := '1'; 							  -- physical address of the transciever
signal rstn_counter : integer range 0 to 5010 := 0;     -- count 100us+220ns (5000+11 50mhz clock cycles)
signal po_counter : integer range 0 to 2499999:= 0;     -- count 50ms - power supply turn on time (2,500,000 50mhz clock cycles)
signal hw_reset : std_logic;         -- button attached to this signal via debouncing circuit: hardware reset
signal init_proc : std_logic := '0'; -- flag indicating wether power-on reset was done or not

-- ******** Ethernet Signals ********--
--*^*^*^*^*^*^* PC's and FPGA's MAC, IP4 addresses and Port numbers *^*^*^*^*^*^*--
signal pc_mac : std_logic_vector (47 downto 0); -- PC's MAC address (configured on PC's side)
signal pc_ip : std_logic_vector (31 downto 0);  -- PC's IP4 address (configured on PC's side)
signal pc_port : std_logic_vector (15 downto 0);-- PC's port (configured on PC's side)
constant fpga_mac : std_logic_vector (47 downto 0) := x"00183e01ff" & "010" & ip;-- FPGA's MAC address
constant fpga_ip : std_logic_vector (31 downto 0) := x"C0A858" & "001" & ip;     -- FPGA's IP4 address 192.168.88.32 - 192.168.88.63
constant fpga_port : std_logic_vector (15 downto 0) := x"04D2";       -- FPGA's port 1234
-- data transfer between Rx and Tx
signal send_arp_reply : std_logic := '0';        -- ARP protocol flag
signal send_ethernet_protocol : std_logic := '0';-- Ethernet protocol flag
signal data_out_valid : std_logic := '0';        -- data valid flag
signal datacm : STD_LOGIC_VECTOR (ADDR_WIDTH downto 0) := (others => '0'); -- length of data in UDP datagram
signal udpl : STD_LOGIC_VECTOR (15 downto 0) := (others => '0'); -- length of IP datagram data field in bytes
signal udpc : STD_LOGIC_VECTOR (15 downto 0) := (others => '0'); -- UDP checksum
-- data to and from RAM
signal rx_data : std_logic_vector (DATA_WIDTH-1 downto 0) := (others => '0'); -- data from Rx to RAM
signal wrt_addr_ram : std_logic_vector (ADDR_WIDTH-1 downto 0) := (others => '0'); -- address to write data to RAM
signal we_ram : std_logic := '0'; -- enable write RAM operation  
signal re_ram : std_logic := '0'; -- enable read RAM operation 

signal datacm_send : STD_LOGIC_VECTOR (ADDR_WIDTH downto 0) := (others => '0');
signal datacm_r : integer range 0 to 1471 := 0;
signal udp_packet_length : STD_LOGIC_VECTOR (15 downto 0);
signal fifo_write : std_logic_vector(FIFO_WIDTH-1 downto 0);
signal fifo_we : std_logic;
signal fifo_read : std_logic_vector(FIFO_WIDTH-1 downto 0);
signal fifo_re : std_logic;

signal arp_response_pending : std_logic;
signal arp_send_valid : std_logic;
signal udp_send_data_valid : std_logic;
signal tx_sent_arp : std_logic;
signal tx_is_idle : std_logic;
signal rx_is_idle : std_logic;
signal tx_data_valid : std_logic;

signal send_countdown : integer range 0 to 6000; -- 8333 packets/s

--signal refclk: std_logic;

-- ******** COMPONENTS DECLARATION ********--
component debounce_switch -- for Hardware Reset switch debouncing
		    generic (N : integer);
			 port (clk100mhz : in std_logic;
					 btn : in std_logic;
					 db_sw : out std_logic);
end component;

component clock_mod -- RMII clocks
			 --generic (M_clk : integer);
			 port (clk100mhz : in std_logic;
					 clk_out : out std_logic;
					 clk_out_shift : out std_logic);
end component;

component clock_mod2 -- MDC clocks
			 generic (M_clk1 : integer;
						 M_clk2 : integer);
			 port (clk100mhz : in std_logic;
					 clk_out1 : out std_logic; 
					 clk_out2 : out std_logic);
end component;

component md_interface -- MDIO interface
			 port (mdc_shift : in STD_LOGIC;
					 mdio : inout  STD_LOGIC;
					 eth_rstn : in  STD_LOGIC;
					 led : out  STD_LOGIC_VECTOR (15 downto 0);
					 sw : in  STD_LOGIC_VECTOR (4 downto 0));
end component;

component eth_receiver -- RMII Rx Interface
			 Generic (ADDR_WIDTH : integer;
						 DATA_WIDTH : integer);
			 port (clk100mhz : in STD_LOGIC;
					 clk50mhz : in  STD_LOGIC;
					 rxd : in  STD_LOGIC_VECTOR (1 downto 0);
					 crsdv : in  STD_LOGIC;
					 rstn : in  STD_LOGIC;
					 rxerr : in STD_LOGIC;
					 -- RAM signals
					 wrt_data_ram : inout STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
					 wrt_addr_ram : inout STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);
					 wrt_enable_ram : out STD_LOGIC;
					 -- Addresses 
					 fpga_mac : in STD_LOGIC_VECTOR (47 downto 0);
					 fpga_ip : in STD_LOGIC_VECTOR (31 downto 0);
					 fpga_port : in STD_LOGIC_VECTOR (15 downto 0);
					 pc_mac : out STD_LOGIC_VECTOR (47 downto 0);
				 	 pc_ip : out  STD_LOGIC_VECTOR (31 downto 0);
					 pc_port : out STD_LOGIC_VECTOR (15 downto 0);
					 -- Data to Tx
					 datacm : out STD_LOGIC_VECTOR (ADDR_WIDTH downto 0);
					 udpl : out STD_LOGIC_VECTOR (15 downto 0);
					 udpc : out STD_LOGIC_VECTOR (15 downto 0);
					 send_arp_reply : out STD_LOGIC;
					 send_ethernet_protocol: out STD_LOGIC;
					 data_out_valid : out STD_LOGIC;
					 is_idle : out std_logic);
end component;

component eth_transmitter -- RMII Tx Interface
			 Generic (ADDR_WIDTH : integer;
				       DATA_WIDTH : integer);
			 port (clk100mhz : in  STD_LOGIC;
					 clk50mhz_shift : in STD_LOGIC;
					 rstn : in STD_LOGIC;
					 txd : inout  STD_LOGIC_VECTOR (1 downto 0);
					 txen : out  STD_LOGIC;
				    -- Data from RAM
                    rd_data_fifo : in STD_LOGIC_VECTOR (31 downto 0);
                    rd_enable_fifo : out STD_LOGIC;
					 -- Addresses
				    fpga_mac : in STD_LOGIC_VECTOR (47 downto 0);
				    fpga_ip : in STD_LOGIC_VECTOR (31 downto 0);
				    fpga_port : in STD_LOGIC_VECTOR (15 downto 0);
				    pc_mac : in STD_LOGIC_VECTOR (47 downto 0);
				    pc_ip : in  STD_LOGIC_VECTOR (31 downto 0);
				    pc_port : in STD_LOGIC_VECTOR (15 downto 0);
				    -- Data from Rx
					 datacm : in STD_LOGIC_VECTOR (ADDR_WIDTH downto 0);
					 udpl : in STD_LOGIC_VECTOR (15 downto 0);
					 udpc : in STD_LOGIC_VECTOR (15 downto 0);
				    send_arp_reply : in STD_LOGIC;
				    send_ethernet_protocol: in STD_LOGIC;
				    data_in_valid : in STD_LOGIC;
				    datacm_r : out integer range 0 to 1471 := 0;
				    sent_arp_response : out std_logic;
			        is_idle : out std_logic);
end component;

component led1 -- Display module for incoming ARP and UDP packets
			 Port ( clk50mhz : in  STD_LOGIC;
					  rstn : in STD_LOGIC;
					  dv_arp : in  STD_LOGIC;
					  dv_eth : in  STD_LOGIC;
					  led16_b : out  STD_LOGIC;
					  led16_g : out  STD_LOGIC;
					  led16_r : out  STD_LOGIC;
					  led17_b : out  STD_LOGIC;
					  led17_g : out  STD_LOGIC;
					  led17_r : out  STD_LOGIC);
end component;

begin

-- ******** COMPONENTS INSTANTIATION ********--
-- clock buffers
	U1: BUFG port map (I=>clk100mhz,O=>b_clk100mhz);
	U2: BUFG port map (I=> clk2_5mhz, O=>b_clk2_5mhz);
	U3: BUFG port map (I=>clk2_5mhz_shift,O=>b_clk2_5mhz_shift);
	U4: BUFG port map (I=> clk50mhz,O=>b_clk50mhz);
	U5: BUFG port map (I=> clk50mhz_shift,O=>b_clk50mhz_shift);
--	pull-ups on multiplexed MODE pins
	PULLUP_MODE0: PULLUP PORT MAP (O => eth_rxd(0));
	PULLUP_MODE1: PULLUP PORT MAP (O => eth_rxd(1));
	PULLUP_MODE2: PULLUP PORT MAP (O => eth_crsdv);
-- pull-up on multiplexed PHYAD pin
	PULLUP_PHYAD0: PULLUP PORT MAP (O => eth_rxerr);
	
-- pull-up on I2C MDIO pin is implemented in md_interface module

-- MDIO interface
	MDIO_Interface: md_interface
						 port map (mdc_shift => b_clk2_5mhz_shift,--clk2_5mhz_shift,
									  mdio => eth_mdio,
									  eth_rstn => eth_rstn,
									  led => led,
									  sw => "11101");
									  
--Ethernet receiver
	Ethernet_receiver: eth_receiver
							 generic map (ADDR_WIDTH => ADDR_WIDTH,
											  DATA_WIDTH => DATA_WIDTH)
						    port map (clk100mhz => b_clk100mhz,
										  clk50mhz => b_clk50mhz,
										  rxd => eth_rxd,
										  crsdv => eth_crsdv,
										  rstn => eth_rstn,
										  rxerr => eth_rxerr,
										  ---
										  wrt_data_ram => rx_data,
										  wrt_addr_ram => wrt_addr_ram,
										  wrt_enable_ram => we_ram,
										  ---
										  fpga_mac => fpga_mac,
										  fpga_ip => fpga_ip,
										  fpga_port => fpga_port,
										  pc_mac => pc_mac,
										  pc_ip => pc_ip,
										  pc_port => pc_port,
										  ---
										  datacm => datacm,
										  udpl => udpl,
										  udpc => udpc,
										  send_arp_reply => send_arp_reply,
										  send_ethernet_protocol => send_ethernet_protocol,
										  data_out_valid => data_out_valid);

--Ethernet transmitter
	Ethernet_transmitter: eth_transmitter
								 generic map (ADDR_WIDTH => ADDR_WIDTH,
												  DATA_WIDTH => DATA_WIDTH)
								 port map (clk100mhz => b_clk100mhz,
											  clk50mhz_shift => b_clk50mhz_shift,
											  rstn => eth_rstn,
											  txd => eth_txd,
											  txen => eth_txen,
											  ---
											  rd_data_fifo => fifo_read_data,
											  rd_enable_fifo => re_ram,
											  ---
											  fpga_mac => fpga_mac,
											  fpga_ip => fpga_ip,
											  fpga_port => fpga_port,
											  pc_mac => pc_mac,
											  pc_ip => pc_ip,
											  pc_port => pc_port,
											  ---
											  datacm => datacm_send,
											  udpl => udp_packet_length,
											  udpc => udp_packet_checksum,
											  send_arp_reply => arp_send_valid,
											  send_ethernet_protocol => udp_send_data_valid,
											  data_in_valid => tx_data_valid,
											  datacm_r => datacm_r,
											  sent_arp_response => tx_sent_arp,
			                                  is_idle => tx_is_idle);

-- ARP and UDP LED's
LED_count : led1 -- Display module for incoming ARP and UDP packets
			 port map (clk50mhz => b_clk50mhz,
						  rstn => eth_rstn,
						  dv_arp => send_arp_reply,
						  dv_eth => send_ethernet_protocol,
						  led16_b => led16_b,
						  led16_g => led16_g,
						  led16_r => led16_r,
						  led17_b => led17_b,
						  led17_g => led17_g,
						  led17_r => led17_r);

-- Debouncing circuit
	Switch: debounce_switch
			  generic map (N => N)
			  port map (clk100mhz => b_clk100mhz,
							btn => btn_reset,
							db_sw => hw_reset);

-- RMII clocks	
	CLOCK_50MHz: clock_mod
					 --generic map (M_clk => M_clk50mhz)
					 port map (clk100mhz => b_clk100mhz,
								  clk_out => clk50mhz,
								  clk_out_shift => clk50mhz_shift); 
-- MDIO clocks
	CLOCK_2_5MHz: clock_mod2
					  generic map (M_clk1 => M_clk2_5mhz1,
										M_clk2 => M_clk2_5mhz2)
					  port map (clk100mhz => b_clk100mhz,
								   clk_out1 => clk2_5mhz,
									clk_out2 => clk2_5mhz_shift);
	
	transceiver: process (b_clk50mhz, hw_reset)
	begin
		if (hw_reset = '0') then
			eth_rstn <= '0';
			--MODE <= "111"; -- configure MODES here (if MODE is other than 1's)
			--PHYAD <= '1';  -- configure PHYAD here (if PHYAD is other than 1's)
			rstn_counter <= 0;
			state <= reset;
		elsif (rising_edge(b_clk50mhz)) then
			case state is
			
			when idle =>
				if (init_proc = '0') then -- if Power-ON Reset (POR) hasn't been completed
					eth_rstn <= '1';
					--MODE <= "111"; -- configure MODES here (if MODES is other than 1's)
					--PHYAD <= '1';  -- configure PHYAD here (if PHYAD is other than 1's)
					state <= power_on;
				else	
					eth_rstn <= '1';
					--MODE <= "111"; -- release (set to 1's) MODES here (if configure them)
					--PHYAD <= '1';  -- release (set to 1) PHYAD here (if configure it)
					state <= idle;
				end if;
			
			when power_on => -- wait for 50 ms before POR
				--MODE <= "111"; -- configure MODES here (if MODES is other than 1's)
				--PHYAD <= '1';  -- configure PHYAD here (if PHYAD is other than 1's)
				if (po_counter < 2499999) then  
					eth_rstn <= '1';
					po_counter <= po_counter+1;
					state <= power_on;
				elsif (po_counter = 2499999) then
					eth_rstn <= '0';
					init_proc <= '1';
					po_counter <= 0;
					state <= reset;
				end if;
			
			when reset => -- POR
				if (rstn_counter <= 4999) then -- 100 us before releasing eth_rstn
					--MODE <= "111"; -- configure MODES here (if MODES is other than 1's)
					--PHYAD <= '1';  -- configure PHYAD here (if PHYAD is other than 1's)
					rstn_counter <= rstn_counter+1;
					eth_rstn <= '0';
					state <= reset;
				elsif (rstn_counter > 4999 and rstn_counter <= 5009) then -- 220 ns hold on time after releasing eth_rstn
					--MODE <= "111"; -- configure MODES here (if MODES is other than 1's)
					--PHYAD <= '1';  -- configure PHYAD here (if PHYAD is other than 1's)
					rstn_counter <= rstn_counter+1;
					eth_rstn <= '1';
					state <= reset;
				elsif (rstn_counter = 5010) then -- POR done, go back to idle state
					--MODE <= "111"; -- release (set to 1's) MODES here (if configure them)
					--PHYAD <= '1';  -- release (set to 1) PHYAD here (if configure it)
					rstn_counter <= 0;
					eth_rstn <= '1';
					state <= idle;
				end if;
					
			end case;
		end if;
	end process transceiver;
	
	s2p : process(clk100mhz)
	variable byte_index : integer range 0 to 3;
	begin
	   if(falling_edge(clk100mhz)) then
	       fifo_we <= '0';
	       if(we_ram = '1') then
	           byte_index := to_integer(unsigned(wrt_addr_ram(1 downto 0)));
               --fifo_write <= fifo_write(FIFO_WIDTH-1-DATA_WIDTH downto 0) & rx_data;
               --fifo_write(FIFO_WIDTH-1-DATA_WIDTH*byte_index downto FIFO_WIDTH-(DATA_WIDTH+1)*byte_index) <= rx_data;
               case byte_index is
                    when 0 => fifo_write(31 downto 24) <= rx_data;
                    when 1 => fifo_write(23 downto 16) <= rx_data;
                    when 2 => fifo_write(15 downto  8) <= rx_data;
                    when 3 => fifo_write( 7 downto  0) <= rx_data;
               end case;
               if(byte_index = 3 and fifo_we = '0') then
                   fifo_we <= '1';
               end if;
	       end if;
	   end if;
	end process;
	
	p2s : process(clk100mhz, re_ram)
	begin
	   if(rising_edge(clk100mhz)) then
	       --fifo_re <= '0';
	       --if(re_ram = '1' and b_clk50mhz = '0') then
	       --    fifo_re <= '1';
           --end if;
	   end if;
	   fifo_re <= re_ram;
	end process;
	
	send : process(b_clk50mhz)
	   variable data_length : integer;
	begin
	   if(hw_reset = '0') then
	       arp_response_pending <= '0';
	       udp_send_data_valid <= '0';
	       arp_send_valid <= '0';
	   elsif(rising_edge(b_clk50mhz)) then
           data_length := to_integer(unsigned(fifo_read_length))*(FIFO_WIDTH/DATA_WIDTH);
           udp_send_data_valid <= '0';
           arp_send_valid <= '0';
           
           if(data_length > 1472) then
                udp_packet_length <= std_logic_vector(to_unsigned(1472+8, 16));
                datacm_send <= std_logic_vector(to_unsigned(1472, ADDR_WIDTH+1));
           else
                udp_packet_length <= std_logic_vector(to_unsigned(data_length+8, 16));
                datacm_send <= std_logic_vector(to_unsigned(data_length, ADDR_WIDTH+1));
           end if;
	       if(send_arp_reply = '1') then
	           arp_response_pending <= '1';
	       elsif(tx_sent_arp = '1') then
	           arp_response_pending <= '0';
	       else
	           arp_response_pending <= arp_response_pending;
	       end if;
	       

	       
	       if(tx_is_idle = '1' and state = idle and send_countdown = 0) then
	           tx_data_valid <= '1';
	           send_countdown <= 6000;
	           if(data_length > 0 and unsigned(pc_ip) /= 0) then
                   udp_send_data_valid <= '1';
               end if;
               if(arp_response_pending = '1') then
                    arp_send_valid <= '1';
               end if;
	       elsif(send_countdown > 0) then
	           tx_data_valid <= '0';
	           send_countdown <= send_countdown-1;
	       else
	           tx_data_valid <= '0';
	       end if;

	   end if;
	end process;

-- tri-state buffers
eth_rxd(0) <= '0' when MODE(0) = '0' else 'Z';
eth_rxd(1) <= '0' when MODE(1) = '0' else 'Z';
eth_crsdv <= '0' when MODE(2) = '0' else 'Z';
eth_rxerr <= '0' when PHYAD = '0' else 'Z';
-- RMII and MDC clocks
eth_refclk <= b_clk50mhz;
eth_mdc <= b_clk2_5mhz;--clk2_5mhz;

-- outputs for debugging
--mode0 <= eth_rxd(0);
--mode1 <= eth_rxd(1);
--mode2 <= eth_crsdv;
--refclk <= b_clk50mhz;
--rxerr <= eth_rxerr;
--txd <= eth_txd;
--txen <= eth_txen;

udp_packet_recieved <= send_ethernet_protocol;
udp_packet_sending <= tx_data_valid and udp_send_data_valid and not arp_response_pending;
fifo_write_data <= fifo_write;
fifo_write_enable <= fifo_we;
fifo_read_enable <= fifo_re;

end Behavioral;

