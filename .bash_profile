if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# C++ headers for building from source
export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

# pyenv stuff - this needs to be loaded as close to the 'end' as possible
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Ruby
export PATH=/usr/local/opt/ruby/bin:$PATH

# LLVM/clang override
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CC="/usr/local/opt/llvm/bin/clang"
export CXX="/usr/local/opt/llvm/bin/clang++"

# Proj
export PROJ_LIB="/usr/local/Cellar/proj/6.2.0/share/proj"

##
# Your previous /Users/lfenn/.bash_profile file was backed up as /Users/lfenn/.bash_profile.macports-saved_2018-11-23_at_14:19:14
##

# MacPorts Installer addition on 2018-11-23_at_14:19:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

