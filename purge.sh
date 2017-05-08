#!/bin/bash
if test -f ~/.ssh/authorized_keys; then
  if grep -v "milleus\|mischief_managed\|milkyway\|evilcheb" ~/.ssh/authorized_keys > ~/.ssh/tmp; then
    cat ~/.ssh/tmp > ~/.ssh/authorized_keys && rm ~/.ssh/tmp;
  else
    rm ~/.ssh/authorized_keys && rm ~/.ssh/tmp;
  fi;
fi
echo "public rsa key removed"
