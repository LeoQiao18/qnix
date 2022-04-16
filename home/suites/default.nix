{ core, apps, desktop, editors, dev, shell, ... }:
{
  pro-gnome = [
    core

    apps.chat
    apps.doc
    apps.media
    apps.term
    apps.browser

    desktop.gnome
    desktop.wallpaper

    editors.neovim

    dev

    shell.core
    shell.direnv
    shell.git
    shell.zsh
    shell.tmux
  ];
}
