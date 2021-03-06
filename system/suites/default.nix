{ core, users, hardware, x, cachix, ... }:
{
  core = [
    core
    users.root
    cachix
  ];

  gnome = [
    x.gnome
    x.xkbOptions
  ];

  nvidia = [
    hardware.nvidia
  ];

  lqiao-gnome-pro = [
    users.lqiao-gnome-pro
  ];

  printer = [
    hardware.printer
  ];

  # audio = [
  #   hardware.audio
  # ];
}
