export EDITOR="e"

export LANG="en_US.UTF-8"
export LC_ALL=$LANG

export PATH="${HOME}/.bin:${PATH}"
export PATH="${PATH}:${HOME}/.gem/ruby/2.3.0/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/lib"

export PAGER=less

export GOPATH=~/.go
export PATH="${PATH}:${GOPATH}/bin"

export LLVM_FLAGS='--target=arm -mfloat-abi=hard'

export GBDK_DIR="${HOME}/.local/opt/gbdk"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

source ~/.current-colors 2>/dev/null
source ~/.cargo/env 2>/dev/null

# Local Variables:
# mode: shell-script
# End:

