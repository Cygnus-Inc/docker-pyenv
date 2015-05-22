# export HOME="/python"
# export PYENV_ROOT="${HOME}/.pyenv"
export PYENV_ROOT="/python/.pyenv"
export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
