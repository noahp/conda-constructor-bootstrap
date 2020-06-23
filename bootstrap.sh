#!/usr/bin/env bash

set -ex

CONDA_ENV_NAME=${CONDA_ENV_NAME:-constructor}

conda create -n $CONDA_ENV_NAME 'python=3.8' 'conda'

# use source activate since we're running in non-interactive mode
source $(dirname $CONDA_EXE)/../etc/profile.d/conda.sh
conda activate $CONDA_ENV_NAME

pip install git+https://github.com/conda/constructor.git@a0f1b8edea46c0fa6991b598860ac4a53f3a3111

echo "You now can run 'conda activate $CONDA_ENV_NAME' to access the constructor utility!"
