. "${BASH_SOURCE%/*}/flexed"

_flexed_containers()
{
    lxc list --format csv 2>/dev/null | awk -F, '$1 != "" { print $1 }'
}

_flexed_completion()
{
    local cur containers

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    [[ $COMP_CWORD -gt 1 ]] && return

    containers="$(_flexed_containers | tr '\n' ' ')"
    COMPREPLY=($(compgen -W "$containers" -- "$cur"))
}

complete -F _flexed_completion flxsh flylxsh flxshb flylxshb flxshz flylxshz flxshk flylxshk
