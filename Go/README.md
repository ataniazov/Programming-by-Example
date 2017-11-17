## Go

```bash
mkdir ~/Applications/
tar -xzf go$VERSION.$OS-$ARCH.tar.gz -C ~/Applications/
mkdir ~/go/
```

### env

```bash
# GOROOT
export GOROOT=$HOME/Applications/go
export PATH=$PATH:$GOROOT/bin

# GOPATH
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

# GOROOT_BOOTSTRAP
export GOROOT_BOOTSTRAP=$GOROOT

# GOBIN
export GOBIN=$GOPATH/bin
```

Put this at the top of your `~/.profile`

```
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private go/bin if it exists
if [ -d "$HOME/Applications/go" ] ; then
    export GOROOT="$HOME/Applications/go"
    PATH="$PATH:$GOROOT/bin"
    # set PATH so it includes user's private workspace
    export GOPATH="$HOME/go"
    PATH="$PATH:$GOPATH/bin"
fi
```

### VS Code

#### Plugins:

* [Go for Visual Studio Code](https://github.com/Microsoft/vscode-go)
* [VSCodeVim](https://github.com/VSCodeVim/Vim)
* [Delve](https://github.com/derekparker/delve) is a debugger for the Go programming language.

```bash
$ go get github.com/derekparker/delve/cmd/dlv
```

#### Preferences

```
"go.autocompleteUnimportedPackages": true
```

### Go Tour

```bash
$ go tool tour
$ go get golang.org/x/tour/gotour
$ gotour
```
