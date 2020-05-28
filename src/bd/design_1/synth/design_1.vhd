--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Thu May 28 17:43:19 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    anodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    cathodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    clk_100MHz : in STD_LOGIC;
    eth_crsdv_0 : inout STD_LOGIC;
    eth_mdc_0 : out STD_LOGIC;
    eth_mdio_0 : inout STD_LOGIC;
    eth_refclk_0 : out STD_LOGIC;
    eth_rstn_0 : inout STD_LOGIC;
    eth_rxd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rxerr_0 : inout STD_LOGIC;
    eth_txd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_txen_0 : inout STD_LOGIC;
    led16_b_0 : out STD_LOGIC;
    led16_g_0 : out STD_LOGIC;
    led16_r_0 : out STD_LOGIC;
    led17_b_0 : out STD_LOGIC;
    led17_g_0 : out STD_LOGIC;
    led17_r_0 : out STD_LOGIC;
    led_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    sw_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=3,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1_fifo_generator_0_0;
  component design_1_fifo_generator_0_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_c_counter_binary_0_0;
  component design_1_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_c_counter_binary_0_1;
  component design_1_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_3_0;
  component design_1_segment_0_0 is
  port (
    num1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    num2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    anodes : out STD_LOGIC_VECTOR ( 0 to 7 );
    cathodes : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  end component design_1_segment_0_0;
  component design_1_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_c_addsub_0_0;
  component design_1_xlconcat_4_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_4_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_xlconstant_0_1;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_ethernet_transceiver2_0_0 is
  port (
    clk100mhz : in STD_LOGIC;
    eth_rxd : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_txd : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_crsdv : inout STD_LOGIC;
    eth_txen : inout STD_LOGIC;
    eth_rxerr : inout STD_LOGIC;
    eth_mdc : out STD_LOGIC;
    eth_mdio : inout STD_LOGIC;
    eth_refclk : out STD_LOGIC;
    eth_rstn : inout STD_LOGIC;
    led16_b : out STD_LOGIC;
    led16_g : out STD_LOGIC;
    led16_r : out STD_LOGIC;
    led17_b : out STD_LOGIC;
    led17_g : out STD_LOGIC;
    led17_r : out STD_LOGIC;
    btn_reset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_packet_checksum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_packet_recieved : out STD_LOGIC;
    udp_packet_sending : out STD_LOGIC;
    fifo_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_enable : out STD_LOGIC;
    fifo_write_full : in STD_LOGIC;
    fifo_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_enable : out STD_LOGIC;
    fifo_read_length : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_read_empty : in STD_LOGIC;
    ip : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_ethernet_transceiver2_0_0;
  component design_1_packaging_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inputStream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inpRdEn : out STD_LOGIC;
    inputEmpty : in STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outWrEn : out STD_LOGIC;
    outputFull : in STD_LOGIC;
    errorCode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stateOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_packaging_0_0;
  signal Net : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Net1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Net2 : STD_LOGIC;
  signal Net3 : STD_LOGIC;
  signal Net4 : STD_LOGIC;
  signal Net5 : STD_LOGIC;
  signal Net6 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_counter_binary_1_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal ethernet_transceiver2_0_eth_mdc : STD_LOGIC;
  signal ethernet_transceiver2_0_eth_refclk : STD_LOGIC;
  signal ethernet_transceiver2_0_fifo_read_EMPTY : STD_LOGIC;
  signal ethernet_transceiver2_0_fifo_read_RD_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ethernet_transceiver2_0_fifo_read_RD_EN : STD_LOGIC;
  signal ethernet_transceiver2_0_fifo_write_FULL : STD_LOGIC;
  signal ethernet_transceiver2_0_fifo_write_WR_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ethernet_transceiver2_0_fifo_write_WR_EN : STD_LOGIC;
  signal ethernet_transceiver2_0_led16_b : STD_LOGIC;
  signal ethernet_transceiver2_0_led16_g : STD_LOGIC;
  signal ethernet_transceiver2_0_led16_r : STD_LOGIC;
  signal ethernet_transceiver2_0_led17_b : STD_LOGIC;
  signal ethernet_transceiver2_0_led17_g : STD_LOGIC;
  signal ethernet_transceiver2_0_led17_r : STD_LOGIC;
  signal fifo_input_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_input_empty : STD_LOGIC;
  signal fifo_input_overflow : STD_LOGIC;
  signal fifo_output_full : STD_LOGIC;
  signal fifo_output_overflow : STD_LOGIC;
  signal fifo_output_rd_data_count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal packaging_0_errorCode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal packaging_0_inpRdEn : STD_LOGIC;
  signal packaging_0_outData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal packaging_0_outWrEn : STD_LOGIC;
  signal packaging_0_stateOut : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC;
  signal segment_0_anodes : STD_LOGIC_VECTOR ( 0 to 7 );
  signal segment_0_cathodes : STD_LOGIC_VECTOR ( 0 to 7 );
  signal sw_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlconcat_4_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_5_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ethernet_transceiver2_0_udp_packet_recieved_UNCONNECTED : STD_LOGIC;
  signal NLW_ethernet_transceiver2_0_udp_packet_sending_UNCONNECTED : STD_LOGIC;
  signal NLW_ethernet_transceiver2_0_led_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_rtl_0, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of eth_rstn_0 : signal is "xilinx.com:signal:reset:1.0 RST.ETH_RSTN_0 RST";
  attribute X_INTERFACE_PARAMETER of eth_rstn_0 : signal is "XIL_INTERFACENAME RST.ETH_RSTN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  anodes_0(0 to 7) <= segment_0_anodes(0 to 7);
  cathodes_0(0 to 7) <= segment_0_cathodes(0 to 7);
  clk_wiz_clk_out1 <= clk_100MHz;
  eth_mdc_0 <= ethernet_transceiver2_0_eth_mdc;
  eth_refclk_0 <= ethernet_transceiver2_0_eth_refclk;
  led16_b_0 <= ethernet_transceiver2_0_led16_b;
  led16_g_0 <= ethernet_transceiver2_0_led16_g;
  led16_r_0 <= ethernet_transceiver2_0_led16_r;
  led17_b_0 <= ethernet_transceiver2_0_led17_b;
  led17_g_0 <= ethernet_transceiver2_0_led17_g;
  led17_r_0 <= ethernet_transceiver2_0_led17_r;
  led_0(15 downto 0) <= xlconcat_4_dout(15 downto 0);
  rst_clk_wiz_100M_peripheral_aresetn <= reset_rtl_0;
  sw_0_1(4 downto 0) <= sw_0(4 downto 0);
c_counter_binary_0: component design_1_c_counter_binary_0_0
     port map (
      CE => fifo_output_overflow,
      CLK => clk_wiz_clk_out1,
      Q(15 downto 0) => c_counter_binary_0_Q(15 downto 0),
      SCLR => xlslice_1_Dout(0)
    );
c_counter_binary_1: component design_1_c_counter_binary_0_1
     port map (
      CE => fifo_input_overflow,
      CLK => clk_wiz_clk_out1,
      Q(15 downto 0) => c_counter_binary_1_Q(15 downto 0),
      SCLR => xlslice_1_Dout(0)
    );
ethernet_transceiver2_0: component design_1_ethernet_transceiver2_0_0
     port map (
      btn_reset => rst_clk_wiz_100M_peripheral_aresetn,
      clk100mhz => clk_wiz_clk_out1,
      eth_crsdv => eth_crsdv_0,
      eth_mdc => ethernet_transceiver2_0_eth_mdc,
      eth_mdio => eth_mdio_0,
      eth_refclk => ethernet_transceiver2_0_eth_refclk,
      eth_rstn => eth_rstn_0,
      eth_rxd(1 downto 0) => eth_rxd_0(1 downto 0),
      eth_rxerr => eth_rxerr_0,
      eth_txd(1 downto 0) => eth_txd_0(1 downto 0),
      eth_txen => eth_txen_0,
      fifo_read_data(31 downto 0) => ethernet_transceiver2_0_fifo_read_RD_DATA(31 downto 0),
      fifo_read_empty => ethernet_transceiver2_0_fifo_read_EMPTY,
      fifo_read_enable => ethernet_transceiver2_0_fifo_read_RD_EN,
      fifo_read_length(15 downto 0) => xlconcat_5_dout(15 downto 0),
      fifo_write_data(31 downto 0) => ethernet_transceiver2_0_fifo_write_WR_DATA(31 downto 0),
      fifo_write_enable => ethernet_transceiver2_0_fifo_write_WR_EN,
      fifo_write_full => ethernet_transceiver2_0_fifo_write_FULL,
      ip(4 downto 0) => sw_0_1(4 downto 0),
      led(15 downto 0) => NLW_ethernet_transceiver2_0_led_UNCONNECTED(15 downto 0),
      led16_b => ethernet_transceiver2_0_led16_b,
      led16_g => ethernet_transceiver2_0_led16_g,
      led16_r => ethernet_transceiver2_0_led16_r,
      led17_b => ethernet_transceiver2_0_led17_b,
      led17_g => ethernet_transceiver2_0_led17_g,
      led17_r => ethernet_transceiver2_0_led17_r,
      udp_packet_checksum(15 downto 0) => xlconstant_0_dout(15 downto 0),
      udp_packet_recieved => NLW_ethernet_transceiver2_0_udp_packet_recieved_UNCONNECTED,
      udp_packet_sending => NLW_ethernet_transceiver2_0_udp_packet_sending_UNCONNECTED
    );
fifo_input: component design_1_fifo_generator_0_1
     port map (
      clk => clk_wiz_clk_out1,
      din(31 downto 0) => ethernet_transceiver2_0_fifo_write_WR_DATA(31 downto 0),
      dout(31 downto 0) => fifo_input_dout(31 downto 0),
      empty => fifo_input_empty,
      full => ethernet_transceiver2_0_fifo_write_FULL,
      overflow => fifo_input_overflow,
      rd_en => packaging_0_inpRdEn,
      srst => xlslice_1_Dout(0),
      wr_en => ethernet_transceiver2_0_fifo_write_WR_EN
    );
fifo_output: component design_1_fifo_generator_0_0
     port map (
      din(31 downto 0) => packaging_0_outData(31 downto 0),
      dout(31 downto 0) => ethernet_transceiver2_0_fifo_read_RD_DATA(31 downto 0),
      empty => ethernet_transceiver2_0_fifo_read_EMPTY,
      full => fifo_output_full,
      overflow => fifo_output_overflow,
      rd_clk => ethernet_transceiver2_0_eth_refclk,
      rd_data_count(8 downto 0) => fifo_output_rd_data_count(8 downto 0),
      rd_en => ethernet_transceiver2_0_fifo_read_RD_EN,
      rst => xlslice_1_Dout(0),
      wr_clk => clk_wiz_clk_out1,
      wr_en => packaging_0_outWrEn
    );
negate_0: component design_1_c_addsub_0_0
     port map (
      A(0) => rst_clk_wiz_100M_peripheral_aresetn,
      CLK => clk_wiz_clk_out1,
      S(0) => xlslice_1_Dout(0)
    );
packaging_0: component design_1_packaging_0_0
     port map (
      clk => clk_wiz_clk_out1,
      errorCode(3 downto 0) => packaging_0_errorCode(3 downto 0),
      inpRdEn => packaging_0_inpRdEn,
      inputEmpty => fifo_input_empty,
      inputStream(31 downto 0) => fifo_input_dout(31 downto 0),
      outData(31 downto 0) => packaging_0_outData(31 downto 0),
      outWrEn => packaging_0_outWrEn,
      outputFull => fifo_output_full,
      rst => rst_clk_wiz_100M_peripheral_aresetn,
      stateOut(3 downto 0) => packaging_0_stateOut(3 downto 0)
    );
segment_0: component design_1_segment_0_0
     port map (
      anodes(0 to 7) => segment_0_anodes(0 to 7),
      cathodes(0 to 7) => segment_0_cathodes(0 to 7),
      clk => clk_wiz_clk_out1,
      num1(15 downto 0) => c_counter_binary_1_Q(15 downto 0),
      num2(15 downto 0) => c_counter_binary_0_Q(15 downto 0)
    );
xlconcat_4: component design_1_xlconcat_3_0
     port map (
      In0(3 downto 0) => packaging_0_errorCode(3 downto 0),
      In1(3 downto 0) => packaging_0_stateOut(3 downto 0),
      In2(7 downto 0) => xlslice_0_Dout(7 downto 0),
      dout(15 downto 0) => xlconcat_4_dout(15 downto 0)
    );
xlconcat_5: component design_1_xlconcat_4_0
     port map (
      In0(8 downto 0) => fifo_output_rd_data_count(8 downto 0),
      In1(6 downto 0) => xlconstant_1_dout(6 downto 0),
      dout(15 downto 0) => xlconcat_5_dout(15 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(15 downto 0) => xlconstant_0_dout(15 downto 0)
    );
xlconstant_1: component design_1_xlconstant_0_1
     port map (
      dout(6 downto 0) => xlconstant_1_dout(6 downto 0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => xlconcat_5_dout(15 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
end STRUCTURE;
