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
  echo "=> Web App Initialization Script Running! - /webapp/init.sh"
  /webapp/init.sh
  echo "=> Done!"
fi

echo "=> Starting Supervisor - exec supervisord -n"
exec supervisord -n
