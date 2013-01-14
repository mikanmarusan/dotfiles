# Created by newuser for 4.3.12

export LANG=ja_JP.UTF-8

# prompt
PROMPT="%B%{[31m%}%/%%%{[m%}%b "

# ターミナルのタイトルにユーザ@ホスト:カレントディレクトリを表示
case "${TERM}" in
kterm*|xterm)
	precmd() {
		echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
	}
	;;
esac

# alias
alias du='du -h'
alias df='df -h'

# 補完
autoload -U compinit
compinit

setopt auto_pushd # cdコマンドの補完
setopt correct    # 間違いを補完

# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt hist_ignore_dups # 重複するコマンドは履歴に書かない

# ホスト固有の設定
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
