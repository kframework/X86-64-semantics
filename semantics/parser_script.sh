#/bin/bash
SCRIPT_DIR=$(dirname $0)
file=$(mktemp) && $SCRIPT_DIR/elf_reader $1 $(grep -Eo '\"\w+\"' "$SCRIPT_DIR/builtins.k" | sed 's/"//g') > $file && kast $file;
rm $file
