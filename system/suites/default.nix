{ core, users, hardware, x, ... }:
{
  nixos-pro = [
    core

    users.root
    users.lqiao-pro

    hardware.audio

    x.gnome
    x.xkbOptions
  ];
}
