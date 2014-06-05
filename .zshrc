# Path to your oh-my-zsh configuration.
ZSH=/Users/tylerfisher/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colorize virtualenv virtualenvwrapper brew pip)

source $ZSH/oh-my-zsh.sh

# paths
export PATH=/usr/local/bin:/Users/tylerfisher/bin:$PATH
export PATH=/usr/local/lib/python2.7/site-packages:$PATH
export NODE_PATH=/usr/local/lib/node_modules

# Compilation flags
export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

# get my sekrits
for file in ~/.{secrets,exports,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file

export CSICOLOR=1
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# woo python
source /usr/local/bin/virtualenvwrapper_lazy.sh

# boo ruby
eval "$(rbenv init -)"
