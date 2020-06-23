# bootstrap conda constructor

Cheesy script to bootstrap a conda environment to run the constructor utility:

https://github.com/conda/constructor

## Usage

Call the script to generate a conda environment called `constructor` (default).

```bash
./bootstrap.sh
```

You can then use it with a `construct.yaml` (see example) to create an installer
for an environment, eg:

```bash
constructor --conda-exe ~/Downloads/conda-4.7.11-linux-64.exe .
```

Note that you'll need an appropriate conda-exe to bundle into the installer, you
can find them at:

https://repo.anaconda.com/pkgs/misc/conda-execs
