#!/bin/sh

if [ -f "${HOME}/.config/picom/picom.conf" ]; then
    return
fi

if [ ! -d "${HOME}/.config/picom" ]; then
    mkdir "${HOME}/.config/picom"
fi

ln -fsv "$(readlink -f picom.conf)" "${HOME}/.config/picom/picom.conf"
