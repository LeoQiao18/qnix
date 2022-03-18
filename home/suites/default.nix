{ core, apps, desktop, editors, dev, shell , ... }:
{
  fullGnome = [ 
    core

    apps.chat
    apps.doc
    apps.media
    apps.term
    apps.browser

    desktop.xrandr
    desktop.gnome
    desktop.wallpaper

    editors.neovim

    dev

    shell.direnv
    shell.git
    shell.zsh
  ];
}
