#!/bin/sh

while getopts 'pia' flag; do
    case "${flag}" in
        p) cp -r lua/plugins/* ~/.config/nvim/lua/plugins/ ;;
        i) cp init.lua ~/.config/nvim/ ;;
        a) cp -r lua/plugins/* ~/.config/nvim/lua/plugins/ && cp init.lua ~/.config/nvim/ ;;
    esac
done
