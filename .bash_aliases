
##Personal Alias
alias 1dstat='systemctl status --user onedrive'
alias sdnow='sudo shutdown -H now'

#Show Files/Folders
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias ls='lsd -al --group-dirs first --icon-theme fancy'
alias la='lsd -a --group-dirs first --icon-theme fancy'
alias ll='lsd -l --group-dirs first --icon-theme fancy'
alias l.='lsd -a | egrep "^\."'

# confirm before overwriting something
#alias cp="cp -i"
#alias mv='mv -i'
#alias rm='rm -i'


# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "


#CD to Drives
alias Delta="cd /Media/Delta"
alias Epsilon="cd /Media/Epsilon"
alias Sigma="cd /Media/Sigma"
alias Theta="cd /Media/Theta"
alias ..="cd .."


alias nordc="nordvpn connect us8493"
alias large10="du -hsx * | sort -rh | head -10"


#Python
#alias PythosVE_setup"python3 -m venv pmm-venv"
#alias PythosVE_activate"pmm-venv/bin/activate"
#alias PMM_start"python plex_meta_manager.py -r"


#See Keyboard Stroke names
alias keykey="xev -event keyboard"

#Vim --> neovim 
alias vim="nvim"


#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize  # http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)