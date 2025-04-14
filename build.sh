#!/bin/bash

# Install pyenv if not present
if [ ! -d "$HOME/.pyenv" ]; then
    curl https://pyenv.run | bash
fi

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Install and use compatible Python version
pyenv install 3.10.14
pyenv global 3.10.14

# Tell Poetry to use the correct Python
poetry env use $(pyenv which python)

# Install dependencies
poetry install
