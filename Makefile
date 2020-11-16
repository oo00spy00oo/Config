all: homebrew

.PHONY: symlink

symlink: profile-symlink zshrc-symlink oh-my-tmux-symlink nvim-symlink zprezto-symlink yabai-symlink skhd-symlink

# Symlink
profile-symlink:
	cd && \
		ln -s -f .config/zsh-config/.bash_aliases && \
		ln -s -f .config/zsh-config/.bash_profile && \
		ln -s -f .config/zsh-config/.kb_alias

zshrc-symlink:
	# Symlink for ZSH
	cd && ln -s -f .config/zsh-config/.zshrc

zprezto-symlink:
	# Default mapping from: ${HOME}/.zprezto/runcoms/zpreztorc
	cd && ln -s -f .config/zsh-config/.zpreztorc

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

yabai-symlink:
	mkdir -p ${HOME}/.config/yabai
	cd ~/.config/yabai && \
		ln -s -f ~/.config/zsh-config/.config/yabai/yabairc

skhd-symlink:
	mkdir -p ${HOME}/.config/skhd
	cd ~/.config/skhd && \
		ln -s -f ~/.config/zsh-config/.config/skhd/skhdrc

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

tmuxinator-completion:
	# https://github.com/tmuxinator/tmuxinator
	wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator