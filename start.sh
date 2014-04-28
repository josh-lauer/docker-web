#!/bin/bash
if [ -f /webapp/init.sh ]; then
  . /webapp/init.sh
fi

exec supervisord -n
