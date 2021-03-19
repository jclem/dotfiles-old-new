set -x SRC "$HOME/src"
set -x CODE "$SRC/github.com"
set -x MY_CODE "$CODE/jclem"
set -x CONFIG "$HOME/.config"
set -x EDITOR code --wait
set -x GOPATH "$HOME/go"
# 2MB erl shell history
set -x ERL_AFLAGS "-kernel shell_history enabled -kernel shell_history_file_bytes 2097152"
# Disable tmux in `r`
set -x NO_R_TMUX 1
