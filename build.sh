#!/bin/sh

set -eu #x

indent(){
    webfile=$1
    ./indent.sh "${webfile}.c" > ".tmp.${webfile}.c"
    mv -f ".tmp.${webfile}.c" "${webfile}.c"
}

compile(){
    webfile=$1
    wflags="-Wall -Wextra -Wstrict-prototypes -Wmissing-prototypes"
    gcc -std=c99 ${wflags} -o "${webfile}" "${webfile}.c"
}

ctangle treeprint
indent treeprint
compile treeprint
cweave treeprint
pdftex treeprint

ctangle wc
indent wc
compile wc
cweave wc
pdftex wc
