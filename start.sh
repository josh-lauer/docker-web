#!/bin/bash
if [ -f /webapp/init.sh ]; then
  . /webapp/init.sh
fi

cd /webapp && bundle install
#cd /webapp && rake db:migrate

exec supervisord -n
