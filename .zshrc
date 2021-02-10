export TERM="xterm-256color"


# Plugins
source ~/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle romkatv/powerlevel10k
antigen theme romkatv/powerlevel10k
antigen apply


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


# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# NPM path, set in .npmrc
export PATH="$HOME/.npm/bin:$PATH"


# FZF - command line fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh ]
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'


# AGKOZAK_PROMPT_CHAR=( ➜ )
# AGKOZAK_CUSTOM_SYMBOLS=( '⇣⇡' '⇣' '⇡' '+' 'x' '!' '>' '?' )
# AGKOZAK_COLORS_PROMPT_CHAR='magenta'
# AGKOZAK_LEFT_PROMPT_ONLY=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


# Starship -  The cross-shell prompt for astronauts
#eval "$(starship init zsh)"

fpath=(~/.zsh $fpath) # Keep custom completion files here

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle :compinstall filename '/home/davorin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

