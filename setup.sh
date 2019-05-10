#!/bin/bash

# By Rodolphe Bouchier rodolphe@bouchier.fr 
ID="$(whoami)"   # --->  echo "${ID}"
WORDKING_DIR="$(pwd)"
DATE="$(date +-%Y%m%d)"
DICTORY_BACKUP="/home/$ID/.dotfile_backup"

# cron jobs might not have /sbin in their path.
export PATH="$PATH:/sbin"
set -o nounset
set -o errexit
set -o pipefail

if [ ! -d "$DICTORY_BACKUP" ]; then
  mkdir -p $DICTORY_BACKUP
fi

SAVE_BASH() {
    cp /home/${ID}/$1 ${DIRECTORY}/$1.back${DATE}
    ln /home/${ID}/$1 ${WORDKING_DIR}/$1
}

SAVE_BASH .bashrc
SAVE_BASH .bash_profile
SAVE_BASH .bash_prompt

SAVE_XFCE() {

}
~/.config/Thunar
~/.local/share/xfce4
~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml



#         Create Function
# !/bin/bash
# Rectangle_Area() {
# area=$(($1 * $2))
# echo "Area is : $area"
# }
#
# Rectangle_Area 10 20