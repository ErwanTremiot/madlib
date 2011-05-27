#!/bin/sh

# Unfortunately, utils/builtin.h from GP < 4.1 contains identifiers that are
# C++ keywords. Since this file changed frequently even within major builds
# we do a simple find & substitute. Essentially, we replace
# "const char *namespace," by "const char *qualifier,".

sed -i.orig \
    's/\(const[[:space:]]*char[[:space:]]*\*[[:space:]]*\)namespace[a-z]*[[:space:]]*,/\1qualifier,/g' \
    server/utils/builtins.h
