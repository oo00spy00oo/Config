all: homebrew

.PHONY: homebrew

version-manager: nvm gvm

symlink: symlink-profile zshrc oh-my-tmux

homebrew:
	./scripts/homebrew.sh

sdkman:
	./scripts/sdkman.sh

kubernetes:
	./scripts/kubernetes.sh

# Symlink
symlink-profile:
	cd && \
	ln -s -f Config/.alias_profile && \
	ln -s -f Config/.bash_profile

zshrc:
	# Symlink for ZSH
	cd && ln -s -f Config/.zshrc

oh-my-tmux:
	# https://github.com/gpakosz/.tmux
	cd && \
	ln -s -f Config/.tmux/.tmux.conf && \
	ln -s -f Config/.tmux/.tmux.conf.local

prezto-contrib:
	# https://github.com/belak/prezto-contrib#usage
	cd ${ZPREZTODIR}
	git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib

# Version manager
gvm:
	# Install Go version manager (gvm)
	xcode-select --install
	brew install mercurial
	curl -sSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# Language
go:
	# https://medium.com/@jimkang/install-go-on-mac-with-homebrew-5fa421fc55f5
	brew install golang
	mkdir -p $HOME/go/{bin,src,pkg}
	# Setup env (in .bash_profile)

colorize:
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize
	# https://github.com/alecthomas/chroma
	go get -u github.com/alecthomas/chroma/cmd/chroma

kube-linter:
	GO111MODULE=on go get golang.stackrox.io/kube-linter/cmd/kube-linter

gitmoj:
	yarn global add gitmoji-cli

awscli:
	curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
	sudo installer -pkg AWSCLIV2.pkg -target /
	rm -rf AWSCLIV2.pkg
	which aws
	aws --version