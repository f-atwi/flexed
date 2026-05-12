. "${BASH_SOURCE%/*}/flexed"

_flexed_containers() { lxc list --format csv 2>/dev/null | awk -F, '$1 != "" { print $1 }'; }

_flexed_completion() { _fly_complete _flexed_containers; }

complete -F _flexed_completion flylxcshell flxcshell flylxcbash flxcbash flylxczsh flxczsh flylxcksh flxcksh
