#!/bin/bash

set -e

DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)

echo "🔗 Creando enlaces simbólicos..."

if [ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ]; then
    echo "💾 Haciendo backup de .zshrc existente..."
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi
ln -sf "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
echo "✅ Enlace creado: ~/.zshrc -> $DOTFILES_DIR/zsh/.zshrc"

ln -sf "$DOTFILES_DIR/wallpapers/wallpaper.jpg" "$HOME/.wallpaper.jpg"
echo "✅ Enlace creado: ~/.wallpaper.jpg -> $DOTFILES_DIR/wallpapers/wallpaper.jpg"
