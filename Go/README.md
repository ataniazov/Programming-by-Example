## The Go Programming Language

[Go](https://golang.org/) is an open source programming language that makes it easy to build simple, reliable, and efficient software.

### Installing Go

```bash
mkdir ~/Applications/
tar -xzf go$VERSION.$OS-$ARCH.tar.gz -C ~/Applications/
mkdir ~/go/
```

### Installing to a custom location

```bash
# GOROOT
export GOROOT=$HOME/Applications/go
export PATH=$PATH:$GOROOT/bin

# GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# GOROOT_BOOTSTRAP
export GOROOT_BOOTSTRAP=$HOME/gobootstrap

# GOBIN
export GOBIN=$GOPATH/bin
```

Put this at the top of your `~/.profile`

```bash
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
    # set GOROOT_BOOTSTRAP path to go tool chain
    export GOROOT_BOOTSTRAP="$HOME/gobootstrap"
    # set GOPATH so it includes user's private go workspace
    export GOPATH="$HOME/go"
    PATH="$PATH:$GOPATH/bin"
fi
```

### Fetch the repository

```bash
$ git clone https://go.googlesource.com/go
$ cd go
$ git checkout go$VERSION
```

### Install Go

```bash
$ cd src
$ ./all.bash
```

### Install additional tools

```bash
$ go get golang.org/x/tools/cmd/...
```

### VS Code

[Visual Studio Code](https://code.visualstudio.com/): Free & open source IDE by Microsoft. Visual Studio Code supports Go syntax highlighting out of the box. Additional features are provided by the vscode-go plugin.

#### Plugins:

* [Go for Visual Studio Code](https://github.com/Microsoft/vscode-go)
* [VSCodeVim](https://github.com/VSCodeVim/Vim)
* [Delve](https://github.com/derekparker/delve) is a debugger for the Go programming language.

```bash
$ go get github.com/derekparker/delve/cmd/dlv
```

#### Preferences

```json
{
    // Disable telemetry
    "telemetry.enableTelemetry": false,
    "telemetry.enableCrashReporter": false,
    // look & feel
    // "editor.renderWhitespace": "boundary",
    "workbench.colorTheme": "Monokai",
    "workbench.colorCustomizations": {
        "activityBarBadge.background": "#F92672"
    },
    // Go settings
    "go.autocompleteUnimportedPackages": true,
    "go.useLanguageServer": true,
    "go.useCodeSnippetsOnFunctionSuggestWithoutType": true,
    // General settings
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 4000,
    "window.zoomLevel": 0,
    "workbench.sideBar.location": "left"
}
```

### Go Tour

```bash
$ go tool tour
$ go get golang.org/x/tour/gotour
$ gotour
```
