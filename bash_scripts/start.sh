# ln -s `which ruby_executable_hooks` /usr/bin/ruby_executable_hooks
# ln -s `which ruby` /usr/bin/ruby

# #!/bin/bash
# if [ "$bundle" == "true" ]; then
#   echo "=> Bundle Install! - cd /webapp &&  /usr/local/rvm/gems/ruby-2.1.1/bin/bundle install"
#   cd /webapp && /usr/local/rvm/gems/ruby-2.1.1/bin/bundle install
#   echo "=> Done!"
# fi

# if [ "$migrate" == "true" ]; then
#   echo "=> Database Migrate! - cd /webapp && /usr/local/rvm/gems/ruby-2.1.1/bin/rake db:migrate"
#   cd /webapp && /usr/local/rvm/gems/ruby-2.1.1/bin/rake db:migrate
#   echo "=> Done!"
# fi

if [ -f /webapp/init.sh ]; then
  echo "=> Web App Initialization Script Running! - /webapp/init.sh"
  /bin/bash /webapp/init.sh
  echo "=> Done!"
fi

echo "=> Starting Supervisor - exec supervisord -n"
exec supervisord -n
