# Stow dotfiles to appropriate locations

echo 'Stowing .zshrc to "$HOME"'
stow -v -R -t ~ zsh

echo 'Stowing neovim config to "$HOME"'
stow -v -R -t ~ nvim
vim -E -s -u "$HOME/.config/nvim/init.vim" +PlugInstall +qall

