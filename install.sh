# Stow dotfiles to appropriate locations

echo "Stowing .zshrc to '$HOME'"
stow -v -R -t ~ zsh

echo "Stowing neovim config to '$HOME'"
stow -v -R -t ~ nvim

echo "Stowing alacritty config to '$HOME'"
stow -v -R -t ~ alacritty

echo "Stowing tmux config to '$HOME'"
stow -v -R -t ~ tmux

echo "Stowing flake8 config to '$HOME'"
stow -v -R -t ~ flake8

echo "Stowing bat config to '$HOME'"
stow -v -R -t ~ bat
bat cache --build

