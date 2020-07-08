# Stow dotfiles to appropriate locations

echo 'Stowing .zshrc to "$HOME"'
stow -v -R -t ~ zsh

echo 'Stowing neovim config to "$HOME"'
stow -v -R -t ~ nvim


