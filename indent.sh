#!/bin/sh
set -eu #x
if type astyle >/dev/null 2>/dev/null; then
    exec astyle -n -T8 --style=k/r -xB -j \
        --pad-oper --pad-comma --break-blocks --pad-header --unpad-paren \
        --indent-after-parens \
        --min-conditional-indent=3 \
        --delete-empty-lines \
        --align-pointer=name \
        --align-reference=name < "$@"
elif type bcpp >/dev/null 2>/dev/null; then
    cfg=${HOME}/.bcpp.cfg
    test -f "${cfg}" || echo > "${cfg}"
    exec bcpp -ylcnc -tbcl -bcl -nbbi -nbi -t "$@"
elif type indent >/dev/null 2>/dev/null; then
    exec indent -kr -ut < "$@"
else
    # no indentation utility found
    exec cat "$@"
fi
