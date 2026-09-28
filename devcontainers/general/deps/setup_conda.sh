#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CONDA_DIR="$HOME/miniconda3"

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -b -c -p "$CONDA_DIR"

# Execute conda shell hook for bash (source ~/.bashrc does not work because the bashrc guards against running in non-interactive shells)
eval "$("$CONDA_DIR/bin/conda" shell.bash hook)"


conda config --set auto_activate_base false
conda activate
conda install --yes --file $SCRIPT_DIR/requirements.txt
rm Miniforge3-$(uname)-$(uname -m).sh
