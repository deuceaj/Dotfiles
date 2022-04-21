
##Personal Alias
alias 1dstat='systemctl status --user onedrive'
alias sdnow='sudo shutdown -H now'

#Show Files/Folders
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


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
alias Oni="cd /Media/Oni"
alias Sigma="cd /Media/Sigma"
alias Theta="cd /Media/Theta"
alias Vega="cd /Media/Vega"
alias ..="cd .."


alias nordc="nordvpn connect us8493"
alias large10="du -hsx * | sort -rh | head -10"


#Python
alias PythosVE_setup"python3 -m venv pmm-venv"
alias PythosVE_activate"pmm-venv/bin/activate"
alias PMM_start"python plex_meta_manager.py -r"

# Edit Configs
alias dot_edit="code /home/deuce/Github/Dotfiles/"
alias awesome_edit="code /home/deuce/.config/awesome/"
alias polybar_edit="code /home/deuce/.config/polybar/"
alias awesome_check="Xephyr :5 & sleep 1 ; DISPLAY=:5 awesome"

#See Keyboard Stroke names
alias keykey="xev -event keyboard"

#Restart polybar
alias = restart_poly=".config/polybar/launch.sh"