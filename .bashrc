#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

f() {
    local TARGET
    TARGET=$(fd | fzf)

    if [-d "$TARGET"]; then
        cd "$TARGET"
    elif [-f "$TARGET"]; then
        nvim "$TARGET"
    fi

}

# fzf book
fb() {
    local book
    book=$(fd -e pdf | sort | fzf)

    zathura "$book"
}

# daily note
dnote() {
    var=$(date +"%Y-%m-%d")
    nvim ~/Documents/notes/"$var.md"
    
}

# yazi wrapper
y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

#alias vim=nvim
alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -a'
alias ff='fastfetch -l arch2'
alias n='nnn -e'
alias tt='tt --notheme'
alias vim='nvim'

#default editor
export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'

eval "$(starship init bash)"
eval "$(zoxide init bash)"
