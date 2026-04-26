#!/bin/bash

VENV_NAME=~/.virtualenvs/ollama-cloud-checkout
PYTHON=/opt/homebrew/bin/python3.14

# Create the virtual environment
$PYTHON -m venv $VENV_NAME

# Activate the environment
# Use 'source' to ensure the environment is activated in your current shell session
source $VENV_NAME/bin/activate

# 4. (Optional) Upgrade pip and install requirements if they exist
if [ -f "requirements.txt" ]; then
    pip install --upgrade pip
    pip install -r requirements.txt
    echo "Dependencies installed from requirements.txt."
fi

echo "Virtual environment '$VENV_NAME' is ready and activated."
