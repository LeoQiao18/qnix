{ core, users, hardware, x, ... }:
{
  laptop = [
    core

    users.root
    users.lqiao

    hardware.audio

    x.gnome
  ];
}
