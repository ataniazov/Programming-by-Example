# Haskell Programming
## How to install haskell?
### Ubuntu

Steps to setup ghc and cabal:
``` bash
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-1.24 ghc-8.0.2
cat >> ~/.bashrc <<EOF
export PATH="\$HOME/.cabal/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:\$PATH"
EOF
export PATH=~/.cabal/bin:/opt/cabal/1.24/bin:/opt/ghc/8.0.2/bin:$PATH
```

## How to configure atom for haskell?
1. System tools needed to be installed
	* haskell-platform - Standard Haskell libraries and tools
	* haskell-platform-doc - Standard Haskell libraries and tools; documentation
	* haskell-platform-prof - Standard Haskell libraries and tools; profiling libraries
	* haskell-stack - The Haskell Tool Stack
	* haskell-doc - Assorted Haskell language documentation
	* cabal-install - command-line interface for Cabal and Hackage
	* ghc - The Glasgow Haskell Compilation system
	* ghc-doc - Documentation for the Glasgow Haskell Compilation system
	* ghc-mod - Happy Haskell programming
	* happy - Parser generator for Haskell
	* hlint - Haskell source code suggestions
	* hoogle - Haskell API Search for Debian system
2. Download and install atom from https://atom.io
3. Plugins needed to be installed:
	* Core Atom-Haskell Packages:
		* language-haskell https://atom.io/packages/language-haskell
		* ide-haskell https://atom.io/packages/ide-haskell
		* ide-haskell-cabal https://atom.io/packages/ide-haskell-cabal
		* haskell-ghc-mod https://atom.io/packages/haskell-ghc-mod
		* autocomplete-haskell https://atom.io/packages/autocomplete-haskell
	* Extra Atom-Haskell Packages:
		* haskell-pointfree https://atom.io/packages/haskell-pointfree
		* ide-haskell-hasktags https://atom.io/packages/ide-haskell-hasktags
		* ide-haskell-hoogle https://atom.io/packages/ide-haskell-hoogle
		* ide-haskell-profiteurjs https://atom.io/packages/ide-haskell-profiteurjs
		* ide-haskell-repl https://atom.io/packages/ide-haskell-repl
		* language-haskell-scoped https://atom.io/packages/language-haskell-scoped
	* Binary Dependencies (stack install):
		* stylish-haskell or hindent (ide-haskell)
		* ghc-mod (haskell-ghc-mod)
		* hasktags (ide-haskell-hasktags)
		* pointfree and pointful (haskell-pointfree)
		* hoogle (ide-haskell-hoogle)
	* Extra editing Packages:
		* vim-mode-plus https://atom.io/packages/vim-mode-plus
		* vim-mode-plus-ex-mode https://atom.io/packages/vim-mode-plus-ex-mode
		
```bash
mkdir $HOME/ghc-mod-sandbox
cd $HOME/ghc-mod-sandbox
cabal sandbox init --sandbox=.
cabal install happy ghc-mod stylish-haskell hlint

$ apm install language-haskell haskell-ghc-mod ide-haskell-cabal ide-haskell autocomplete-haskell

```
