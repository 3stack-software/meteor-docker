set -e

apt-get update -y
apt-get install -y curl build-essential
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs
npm install -g node-gyp
node-gyp install

apt-get autoremove -y

# Clean out docs
rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale /usr/share/zoneinfo

# Clean out package management dirs
rm -rf /var/lib/cache /var/lib/log

# Clean out /tmp
rm -rf /tmp/*

# Clear npm cache
npm cache clear
