# install ruby
sudo apt-get install ruby-full

# install bundler
gem install bundler

# install lib ruby2d
url='https://raw.githubusercontent.com/simple2d/simple2d/master/bin/simple2d.sh'; which curl > /dev/null && cmd='curl -fsSL' || cmd='wget -qO -'; bash <($cmd $url) install

# install project dependencies
bundle install
