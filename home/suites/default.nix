{ core, apps, desktop, editors, dev, shell, ... }:
{
  core = [
    core
  ];

  gnome = [
    desktop.gnome
    desktop.wallpaper
  ];

  dev = [
    dev

    shell.core
    shell.direnv
    shell.git
    shell.zsh
    shell.tmux

    editors.neovim
  ];

  guiApps = [
    apps.chat
    apps.doc
    apps.media
    apps.term
    apps.browser
    apps.office
  ];
}
