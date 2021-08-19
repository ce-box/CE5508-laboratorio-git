#!/bin/sh

if ! egrep "^#.copyright" */*.py; then
    echo "ERROR: Disallowed development configuration in file: .py"
    exit 1
fi