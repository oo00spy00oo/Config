all: homebrew

.PHONY: symlink

symlink: profile-symlink zshrc-symlink oh-my-tmux-symlink nvim-symlink

# Symlink
profile-symlink:
	cd && \
		ln -s -f .config/zsh-config/.bash_aliases && \
		ln -s -f .config/zsh-config/.bash_profile && \
		ln -s -f .config/zsh-config/.kb_alias

zshrc-symlink:
	# Symlink for ZSH
	cd && ln -s -f .config/zsh-config/.zshrc

oh-my-tmux-symlink:
	# https://github.com/gpakosz/.tmux
	git submodule update --init --recursive
	git submodule sync

	cd && \
		ln -s -f .config/zsh-config/.tmux/.tmux.conf && \
		ln -s -f .config/zsh-config/.tmux/.tmux.conf.local

nvim-symlink:
	mkdir -p ${HOME}/.config/nvim
	cd ~/.config/nvim && \
		ln -s -f ${HOME}/.config/zsh-config/.config/nvim/configs && \
		ln -s -f ${HOME}/.config/zsh-config/.config/nvim/init.vim

prezto-contrib:
	# https://github.com/belak/prezto-contrib#usage
	cd ${ZPREZTODIR}
	git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib

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

awscli:
	curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
	sudo installer -pkg AWSCLIV2.pkg -target /
	rm -rf AWSCLIV2.pkg
	which aws
	aws --version