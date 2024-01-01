#!/bin/bash

# Ensure this script is run with bash
if [ -z "$BASH_VERSION" ]; then
    echo "This script requires bash (default terminal). Please run it using bash."
    exit 1
fi

# Source miniconda.sh to ensure Conda is initialized
source ./miniconda.sh

# Verify if conda command is available
if ! command -v conda &> /dev/null; then
    echo "Conda command not found. Please check the Miniconda installation."
    exit 1
fi

# Check if mlenv exists
if conda info --envs | grep -q mlenv; then
    echo "Activating existing Conda environment 'mlenv'."
    conda activate mlenv
else
    echo "Creating and activating new Conda environment 'mlenv'."
    conda create -n mlenv python=3.8 -y
    conda activate mlenv
fi

# Install common ML/DL/NN/Data Science libraries
conda install pytorch torchvision torchaudio -c pytorch -y  # PyTorch
conda install -c apple tensorflow-deps -y  # Dependencies for TensorFlow
pip install tensorflow-macos  # TensorFlow for macOS
pip install tensorflow-metal  # TensorFlow plugin for Metal (Apple GPUs)
conda install numpy matplotlib pandas scikit-learn scipy -y  # Basic Data Science libraries
conda install -c conda-forge xgboost lightgbm catboost -y  # Gradient boosting libraries
conda install -c conda-forge keras -y  # High-level neural networks API
conda install -c conda-forge jupyterlab -y  # JupyterLab
conda install -c conda-forge seaborn -y  # Statistical data visualization
conda install -c conda-forge plotly -y  # Interactive graphing
conda install -c conda-forge scikit-image -y  # Image processing
conda install -c conda-forge nltk spacy gensim -y  # NLP libraries
conda install -c conda-forge statsmodels -y  # Statistical modeling
conda install -c conda-forge opencv -y  # OpenCV for computer vision
conda install -c conda-forge h5py -y  # Handling large data sets
conda install -c conda-forge tqdm -y  # Progress bars for loops and composable iterables

echo "ML/DL/NN/Data Science environment setup complete."
