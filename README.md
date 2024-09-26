# local-deplyoment

## Installation

### Miniforge, Conda, Mamba (Mac OS, Linux, Windows)

If you haven't already done so, install [Miniforge](https://github.com/conda-forge/miniforge). Miniforge provides 
minimal installers for [Conda](https://conda.io/) and [Mamba](https://github.com/mamba-org/mamba) specific to 
[conda-forge](https://conda-forge.org/), with the following features pre-configured:

   * Packages in the base environment are obtained from the `conda-forge` channel.
   * The `conda-forge` channel is set as the default (and only) channel.

Conda/mamba will be the primary package managers used to install the required Python dependencies. For 
convenience, a script is included that will download and install Miniforge, Conda, and Mamba. You can run the 
script using the following command.

```bash
./bin/install-miniforge.sh
```

### Creating the Conda environment

After adding any necessary dependencies that should be downloaded via `conda` to the `environment.yml` file and any 
dependencies that should be downloaded via `pip` to the `requirements.txt` file you create the Conda environment in a 
sub-directory `./env`of your project directory by running the following shell script.

```bash
./bin/create-conda-env.sh
```

Once the new environment has been created you can activate the environment with the following command.

```bash
conda activate ./env
```

Note that the `./env` directory is *not* under version control as it can always be re-created as 
necessary.


