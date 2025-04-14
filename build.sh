#!/bin/bash

# Check if pyenv is installed, if not, install it
if [ ! -d "$HOME/.pyenv" ]; then
    curl https://pyenv.run | bash
fi

# Add pyenv to the path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Install the required Python version
pyenv install 3.10.14
pyenv global 3.10.14

# Then run your build steps
poetry install
