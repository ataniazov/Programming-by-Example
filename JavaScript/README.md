# JavaScript

## Node.js

[**Node.js®**](https://nodejs.org/) is a JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. Node.js' package ecosystem, npm, is the largest ecosystem of open source libraries in the world.

### Installing Node.js

#### Debian and Ubuntu based Linux distributions

**NOTE:** If you are using Ubuntu Precise or Debian Wheezy, you might want to read about running Node.js >= 6.x on older distros.

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

**Optional:** install build tools

To compile and install native addons from npm you may also need to install build tools:

```bash
sudo apt-get install -y build-essential
```

#### Installing to a custom location

```bash
mkdir ~/Applications/
tar -xvf node-$VERSION-$OS-$ARCH.tar.xz -C ~/Applications/
mv ~/Applications/node-$VERSION-$OS-$ARCH/ ~/Applications/node/
```

```bash
# Node.js
export NODEJS=$HOME/Applications/node
export PATH=$PATH:$NODEJS/bin
```

Put this at the top of your `~/.profile`

```bash
# set PATH so it includes user's private nodejs/bin if it exists
if [ -d "$HOME/Applications/node" ] ; then
    export NODEJS="$HOME/Applications/node"
    PATH="$PATH:$NODEJS/bin"
fi
```

## Yarn

[**Yarn**](https://yarnpkg.com/) - fast, reliable, and secure dependency management.

### Installing Yarn

#### Debian/Ubuntu Linux

On Debian or Ubuntu Linux, you can install Yarn via our Debian package repository. You will first need to configure the repository:

```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```

On Ubuntu 16.04 or below and Debian Stable, you will also need to configure the NodeSource repository to get a new enough version of Node.js.

Then you can simply:

```bash
sudo apt-get update && sudo apt-get install yarn
```

**Note:** Ubuntu 17.04 comes with cmdtest installed by default. If you’re getting errors from installing yarn, you may want to run sudo apt remove cmdtest first. Refer to this for more information.

#### Installing to a custom location

You can install Yarn by downloading a tarball and extracting it anywhere.

```bash
cd ~/Downloads/
wget https://yarnpkg.com/latest.tar.gz
tar zvxf latest.tar.gz -C ~/Applications/
# Yarn is now in /opt/yarn-[version]/
mv ~/Applications/yarn-$VERSION/ ~/Applications/yarn/
```

Before extracting Yarn, it is recommended that you verify the tarball using GPG:

```bash
wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --import
wget https://yarnpkg.com/latest.tar.gz.asc
gpg --verify latest.tar.gz.asc
# Look for "Good signature from 'Yarn Packaging'" in the output
```
##### Path Setup

```bash
# Yarn
export YARN=$HOME/Applications/yarn
export PATH=$PATH:$YARN/bin
```

Put this at the top of your `~/.profile`

```bash
# set PATH so it includes user's private yarn/bin if it exists
if [ -d "$HOME/Applications/yarn" ] ; then
    export YARN="$HOME/Applications/yarn"
    PATH="$PATH:$YARN/bin"
fi
```