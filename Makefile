setup: install-vim-plug install-zinit mise-install sync-dotfiles vim-plug-install

update: git-pull sync-dotfiles brew-upgrade vim-plug-update nvim-update-remote-plugins update-gotools zplug-update

install-vim-plug:
	@[ -e ~/.config/nvim/autoload/plug.vim ] || \
		curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mise-install:
	@mise install

git-pull:
	@git pull -p

sync-dotfiles:
	@./sync_dotfiles

brew-upgrade:
	@brew update; brew upgrade; brew cleanup

vim-plug-install:
	@$(EDITOR) +PlugInstall +qa

vim-plug-update:
	@$(EDITOR) +PlugUpgrade +PlugUpdate +qa

nvim-update-remote-plugins:
	@[ "$(EDITOR)" = "nvim" ] && $(EDITOR) +UpdateRemotePlugins +qa

update-gotools:
	@./update_gotools

zplug-update:
	@zsh -c 'source ~/.zshrc; zplug update'
