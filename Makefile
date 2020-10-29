all: homebrew

.PHONY: homebrew

homebrew:
	./homebrew.sh

sdkman:
	./sdkman.sh

symlink:
	ln -s /Users/oo00spy00oo/Config/.alias_profile /Users/oo00spy00oo/ &
	ln -s /Users/oo00spy00oo/Config/.bash_profile /Users/oo00spy00oo/ &
	ln -s /Users/oo00spy00oo/Config/.env_profile /Users/oo00spy00oo/ &

prezto-contrib:
	# https://github.com/belak/prezto-contrib#usage
	cd ${ZPREZTODIR}
	git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib

gvm:
	# Install Go version manager (gvm)
	brew install mercurial
	bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

go:
	# https://medium.com/@jimkang/install-go-on-mac-with-homebrew-5fa421fc55f5
	brew install golang
	mkdir -p $HOME/go/{bin,src,pkg}
	# Setup env (in .env.profile)

colorize:
	# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize
	# https://github.com/alecthomas/chroma
	go get -u github.com/alecthomas/chroma/cmd/chroma
	