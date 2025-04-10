export TERM="xterm-256color"

# Zplug - plugin manager
# source ~/.zplug/init.zsh
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zuxfoucault/colored-man-pages_mod"
zplug "supercrabtree/k"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"


# History
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_verify
setopt share_history
setopt append_history
setopt extended_history
setopt inc_append_history

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000


setopt auto_cd
setopt no_list_beep
setopt prompt_subst


# Aliases

alias l='ls -GF --color'
alias ll='ls -lhGF --color'
alias la='ls -lhGAF --color'
alias le='exa -lg --git'
alias lk='k --no-vcs'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


alias ...='../..'
alias ....='../../..'

# Python
alias python='/opt/homebrew/bin/python3'

# Laravel Sail
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# NPM path, set in .npmrc
export PATH="$HOME/.npm/bin:$PATH"


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)


fpath=(~/.zsh $fpath) # Keep custom completion files here

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle :compinstall filename '/home/davorin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Oh My Posh theme
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/star.omp.json)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/davorin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/davorin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/davorin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/davorin/google-cloud-sdk/completion.zsh.inc'; fi


# bun completions
[ -s "/Users/davorin/.bun/_bun" ] && source "/Users/davorin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# kubectl plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
