### ピープ音を消す
setopt no_beep

### rbenv
eval "$(rbenv init -)"

### nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### git branch autocomplete(https://medium.com/@oliverspryn/adding-git-completion-to-zsh-60f3b0e7ffbc)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

### 保管候補をハイライトする
zstyle ':completion:*:default' menu select=2

### 大文字の候補が見つからない場合には, 小文字の候補を補完する
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### End of Zinit installer's chunk
zplugin ice wait'0'
zplugin ice depth=1; zplugin light romkatv/powerlevel10k
zplugin ice wait'0'
zplugin light "peterhurford/git-it-on.zsh"
zplugin ice wait'0'
zplugin light "zsh-users/zsh-autosuggestions"
zplugin ice wait'0'
zplugin light "zsh-users/zsh-syntax-highlighting"
zplugin ice wait'0'
zplugin light "zsh-users/zsh-completions"
zplugin light "zsh-users/zsh-history-substring-search"
zplugin ice wait'0'
zplugin light "t413/zsh-background-notify"
zplugin light "junegunn/fzf-bin"
zplugin light "mollifier/anyframe"
zplugin ice wait'0'
zplugin light "supercrabtree/k"
zplugin ice wait'0'
zplugin light "chrissicool/zsh-256color"
zplugin ice wait'0'
zplugin light "/liangguohuan/zsh-dircolors-solarized"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias
alias dc="docker-compose"
alias cdk="cd-bookmark"
alias ..="cd .."
alias ....="cd ../../"
alias gt="gitit"
alias gck="git checkout"
alias ga="git add"
alias gs="git status"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gb="git branch"
alias c="code"
alias wbs="bin/webpack-dev-server"
alias ssh="~/bin/ssh-change-bg"
alias ls="exa -ahl --git --time-style=long-iso"
alias ll="ls -la"

### anyframe settings
bindkey '^u' anyframe-widget-cdr
## branchをインクリメントサーチする
bindkey '^b' anyframe-widget-checkout-git-branch
### ディレクトリをインクリメントサーチする
bindkey '^k' anyframe-widget-cd-ghq-repository
### bindkeybindkey '^x^k' anyframe-widget-kill
### bindkey '^i' anyframe-widget-insert-git-branch
### bindkey '^x^r' anyframe-widget-execute-history
### bindkey '^x^p' anyframe-widget-put-history

### android studio settings
export ANDROID_HOME=/Users/nerdyboy_cool/Library/Android/sdk
export PATH=$PATH:/Users/nerdyboy_cool/Library/Android/sdk/emulator
export PATH=$PATH:/Users/nerdyboy_cool/Library/Android/sdk/tools
export PATH=$PATH:/Users/nerdyboy_cool/Library/Android/sdk/tools/bin
export PATH=$PATH:/Users/nerdyboy_cool/Library/Android/sdk/platform-tools

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"
