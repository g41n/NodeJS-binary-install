#!/bin/bash

# Simple script to manage nodejs binaries installation
# on a linux distro

if [[ -z $1 ]]; then
  echo -e "\n  USAGE: $0 ACTION"
  echo -e "  EXAMPLE: $0 remove"
  echo -e "           $0 install node-v4.6.0-linux-x64.tar.xz\n"
  exit 1
fi

ACTION=$1

case $ACTION in
"install")
  tar xf $2 --strip-components=1 -C /usr/local
  rm /usr/local/CHANGELOG.md
  rm /usr/local/LICENSE
  rm /usr/local/README.md
  ;;
"remove")
  rm /usr/local/bin/npm
  rm /usr/local/bin/node
  rm /usr/local/share/man/man1/node.1
  rm /usr/local/share/systemtap/tapset/node.stp
  rm /usr/local/share/doc/node/gdbinit
  rm -rf /usr/local/include/node
  rm -rf /usr/local/lib/node_modules
  ;;
*)
  echo "$ACTION is not a valid action"
  exit 1
  ;;
esac
