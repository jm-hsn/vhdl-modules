# VHDL neural network accelerators for distributed computation on FPGAs

VHDL implementation of job parser and hardware accelerator modules

## How to prepare Vivado for Git support

Add `Vivado_init.tcl` (or append the relevant lines if you already have
something in it) along with the `scripts` directory to:

- `%APPDATA%\Roaming\Xilinx\Vivado` on Windows
- `~/.Xilinx/Vivado` on Linux

## How to pull newest version

- delete local changes `git pull && git reset --hard`
- start Vivado in any directory
- `Tools` > `Run Tcl Script...` > `vhdl-modules.tcl`

Vivado should then recreate the project inside `vivado_project/` and open it.

When `design_1_wrapper` doesn't appear as Top Module:

- Watch the Tcl Console for any possible errors during creation, mainly missing files.
- create a Git issue with your Tcl output attached
- recreate without `vhdl-modules.tcl`

## How to recreate without `vhdl-modules.tcl`

- Create project `vhdl-modules` without own project folder inside `vivado_project/`
- Import all sources from `src/hdl/` with *copy sources into project* checked
- Import block design `src/bd/design_1/design_1.bd` with *copy sources into project* checked
- Import testbenches from `src/testbench/` with *copy sources into project* unchecked
- Import constraints from `src/constraints/` with *copy sources into project* unchecked
- `design_1` > `create HDL Wrapper...` > Let Vivado manage wrapper
- save this state by committing like below:

## How to commit changes

type **inside Vivados Tcl console**:

```tcl
git add .
git commit -m "my commit"
```

This way `vhdl-modules.tcl` will by overridden.

---

## Readme of [barbedo/vivado-git](https://github.com/barbedo/vivado-git)

Trying to make Vivado more git-friendly.

### Requirements

- Tested on Vivado 2019.2

#### Windows

- [Git for Windows](https://git-scm.com/download/win)
- Add `C:\Program Files\Git\bin` (or wherever you have your `git.exe`) to your `PATH`

#### Linux

- Git

### Installation

Add `Vivado_init.tcl` (or append the relevant lines if you already have
something in it) along with the `scripts` directory to:

- `%APPDATA%\Roaming\Xilinx\Vivado` on Windows
- `~/.Xilinx/Vivado` on Linux

### How it works

Vivado is a pain in the ass to source control decently, so these scripts provide:

- A modified `write_project_tcl_git.tcl` script to generate the project script
  without absolute paths.

- A git wrapper that will recreate the project script and add it before committing.

- A Tcl script (`wproj`) to just create the Tcl project generator script without
  using git. This script can be called from the Tcl Console on Vivado.

### Workflow

 1. When first starting a project, create it in a folder called `vivado_project`
    (e.g. `PROJECT_NAME/vivado_project`). All the untracked files will be under this directory.

 2. Place your source files anywhere you want in your project folder
    (e.g. `PROJECT_NAME/src`).

    Here is an example of a possible project structure:

    ```tree
    PROJECT_NAME
        ├── .git
        ├── .gitignore
        ├── project_name.tcl         # Project generator script
        ├── src/                     # Tracked source files
        │   ├── design
        │   │    ├── *.v
        │   │    └── *.vhd
        │   ├── testbench
        │   │    ├── *.v
        │   │    └── *.vhd
        │   └── ...
        └── vivado_project/          # Untracked generated files
            ├── project_name.xpr
            ├── project_name.cache/
            ├── project_name.hw/
            ├── project_name.sim/
            ├── project_name.srcs/
            │    ├── sources_1/
            │    │    ├── bd/                                  # BDs are regenerated from script
            │    │    │    ├── my_bd/hdl/my_bd_wrapper.{v,vhd} # BD wrappers are also regenerated
            │    │    │    └── ...
            │    │    └── ...
            │    └── ...
            └── ...
    ```

 3. Initialize the git repository with `git init` on the Tcl Console. This will
    create the repository, automatically change to your project directory
    (`PROJECT_NAME`), generate the `.gitignore` file and stage it.

 4. Stage your source files with `git add`.

 5. When you are done, `git commit` your project. A `PROJECT_NAME.tcl`
    script will be created in your `PROJECT_NAME` folder and added to your commit.

 6. Afterwards, when opening the project after cloning it, do it by using
    `Tools -> Run Tcl Script...` and selecting the `PROJECT_NAME.tcl` file
    created earlier. This will regenerate the project so that you can continue to work.

### Notes

### Block design support

If a block design is present, Tcl processes will be integrated in the project
generator file to regenerate it.

The script will also automatically create and add the BD wrapper to the project.

The wrapper of the `.bd` file **must** be called `${bd_name}_wrapper`
(e.g. `my_awesome_bd_wrapper` if your BD is called `my_awesome_bd`),
which is the default when creating in the GUI with `Create HDL Wrapper...`.

The BD wrapper that is automatically generated by Vivado **must not** be
tracked by Git. If you need to manually modify the BD wrapper generated by Vivado,
you can write a handwritten wrapper to the generated wrapper and put only the
handwritten one under source control.

#### Board part and IP repositories paths

Only board part and IP repositories inside the project are stored in the project
generator script.

If you have a system wide board part or IP repository, you will need to add it manually
after recreating the project from the Tcl script (e.g. via `Settings --> Board Repository`).
