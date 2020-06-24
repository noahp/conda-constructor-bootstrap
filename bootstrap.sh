#!/usr/bin/env bash

set -e

CONDA_ENV_NAME=${CONDA_ENV_NAME:-constructor}

echo ">>> Creating conda env \"$CONDA_ENV_NAME\"..."
conda create --quiet -n "$CONDA_ENV_NAME" 'python=3.8' 'conda'

# use source activate since we're running in non-interactive mode
source "$(dirname $CONDA_EXE)/../etc/profile.d/conda.sh"
conda activate "$CONDA_ENV_NAME"

# Install a commit of the constructor tool that seems to work for me; the latest
# release at the moment, 3.0.0, doesn't support the `environment_file` key for
# constructing an installer from an existing environment file
echo ">>> Installing constructor..."
pip install --quiet git+https://github.com/conda/constructor.git@a0f1b8edea46c0fa6991b598860ac4a53f3a3111

echo ">>> You now can run 'conda activate \"$CONDA_ENV_NAME\"' to access the constructor utility!"
