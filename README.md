# local-deplyoment-llamafile

Project to help you get started deploying Generative AI models locally using [Llamafile](https://github.com/Mozilla-Ocho/llamafile) and friends. Llamfile aims to make open-source LLMs more accessible to both developers and end users by combining [LLaMA C++](https://github.com/ggerganov/llama.cpp) with [Cosmopolitan Libc](https://github.com/jart/cosmopolitan) into one framework that collapses all the complexity of LLMs down to a single-file executable (called a "llamafile") that runs locally on most computers, with no installation. 

What llamafile gives you is a fun web GUI chatbot, a turnkey OpenAI API compatible server, and a shell-scriptable CLI interface which together put you in control of artificial intelligence.

In addition to LLamfile, this project will help you get started with two related projects.

1. Whisperfile: Combines [wHIsper C++](https://github.com/ggerganov/whisper.cpp/), which provides high-performance inference of [OpenAI's Whisper](https://github.com/openai/whisper) automatic speech recognition (ASR) model, with [Cosmopolitan Libc](https://github.com/jart/cosmopolitan) into one framework that collapses all the complexity of LLMs down to a single-file executable (called a "llamafile") that runs locally on most computers, with no installation.
2. Sdfile: Combines [](https://github.com/leejet/stable-diffusion.cpp) which provides high-performance inference of Stable Diffusion and Flux in pure C/C++, with [Cosmopolitan Libc](https://github.com/jart/cosmopolitan) into one framework that collapses all the complexity of LLMs down to a single-file executable (called a "llamafile") that runs locally on most computers, with no installation.

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

#### Support for NVIDIA GPU acceleration

If you have an NVIDIA GPU, the in order to support GPU acceleration you need to install `cuda-toolkit` from the 
`nvidia` Conda channel. This change is made in the `environment-nvidia-gpu.yml` file. Create the Conda environment 
in a sub-directory `./env`of your project directory by running the following shell script.

```bash
./bin/create-conda-env.sh environment-nvidia-gpu.yml
```

### Installing Llamafile (and friends!) 

After creating the Conda environment you can install Llamafile (and Whisperfile and Sdfile) by running the following
command.

```bash
conda run --prefix ./env --live-stream ./bin/install-llamafile.sh
```

This command does the following.

1. Properly configures the Conda environment.
2. Downloads a [recent version](https://github.com/Mozilla-Ocho/llamafile/releases) of Llamafile.
3. Installs Llamafile binary into the `bin/` directory of the Conda environment.

By default, this script downloads a recent version of Llamafile. You can install a specific release by passing the 
version number as a command line argument to the script as follows.

```bash
conda run --prefix ./env --live-stream ./bin/install-llamafile.sh 0.8.13
```

## Building Llamafile (and friends!) from source (optional)

After creating the Conda environment you can build Llamafile (and Whisperfile, Sdfile, and Llamafiler) by running 
the following command.

```bash
conda run --prefix ./env --live-stream ./bin/build-llamafile.sh
```

## Activating the Conda environment

Once the new environment has been created you can activate the environment with the following command.

```bash
conda activate ./env
```

Note that the `./env` directory is *not* under version control as it can always be re-created as 
necessary.

## Funding Acknowledgment

This project is supported by funding from King Abdullah University of Science and Technology (KAUST) - Center of Excellence for Generative AI, under award number 5940.