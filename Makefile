setup: install-vim-plug install-zinit mise-install sync-dotfiles vim-plugin-install

update: git-pull sync-dotfiles brew-upgrade vim-plugin-update nvim-update-remote-plugins update-gotools zsh-plugin-update

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

vim-plugin-install:
	@$(EDITOR) +PlugInstall +qa

vim-plugin-update:
	@$(EDITOR) +PlugUpgrade +PlugUpdate +qa

nvim-update-remote-plugins:
	@[ "$(EDITOR)" = "nvim" ] && $(EDITOR) +UpdateRemotePlugins +qa

update-gotools:
	@./update_gotools

zsh-plugin-update:
	@sheldon lock --update
