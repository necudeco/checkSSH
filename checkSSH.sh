#!/bin/bash

DIRS=$(cut -f6 -d ':' /etc/passwd | sort  | uniq )
for  d in $DIRS; do
        if [ -s "${d}/.ssh/authorized_keys" ]; then
                echo ""
                echo $d
                cat "${d}/.ssh/authorized_keys"
        fi
done
