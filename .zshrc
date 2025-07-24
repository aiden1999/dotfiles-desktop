export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode prompt
zstyle ':omz:update' verbosity default

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
zstyle 'completion:*' matcher-list 'm:{a-z}={A-Za-z}'

DISABLE_AUTO_TITLE="false"

DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_LS_COLORS="false"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

HIST_FILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' no
zstyle ':omz:plugins:eza' 'header' no
zstyle ':omz:plugins:eza' 'show-group' no
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'size-prefix' si
zstyle ':omz:plugins:eza' 'hyperlink' no
zstyle ':omz:plugins:eza' 'across' yes

plugins=(
    autoupdate
    colored-man-pages
    eza
    gh
    rust
    starship
    zoxide
    zsh-autocomplete
    zsh-autopair
    zsh-autosuggestions
    zsh-completion-generator
    zsh-history-substring-search
    zsh-syntax-highlighting
    )

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR="$VISUAL"
export BAT_THEME="Nord"
export TERM=kitty
export TERMINAL="/usr/bin/kitty"
export PATH="$HOME/.cargo/bin:$HOME/Scripts:$PATH"
export PATH="/home/aiden/.local/share/gem/ruby/3.3.0/bin/:$PATH"
export PATH="$PATH:/home/aiden/.local/bin"
export PATH="$HOME/.config/rofi/scripts:$PATH"

alias cd="z"
alias syu="sh /home/aiden/Scripts/syu.sh"
alias man="colored man"
