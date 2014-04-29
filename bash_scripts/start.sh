#!/bin/bash
if [[ "$bundle" -eq "true" ]]; then
  echo "=> Bundle Install! - cd /webapp && bundle install"
  cd /webapp && bundle install
  echo "=> Done!"
fi

if [[ "$migrate" -eq "true" ]]; then
  echo "=> Database Migrate! - cd /webapp && rake db:migrate"
  cd /webapp && rake db:migrate
  echo "=> Done!"
fi

if [ -f /webapp/init.sh ]; then
  /webapp/init.sh
fi

exec supervisord -n
