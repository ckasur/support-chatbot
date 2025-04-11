#!/bin/bash

# Install pyenv if missing
if ! command -v pyenv &>/dev/null; then
    curl https://pyenv.run | bash
fi

# Install the required Python version
pyenv install 3.11.11
pyenv global 3.11.11

# Then run your build steps
poetry install
