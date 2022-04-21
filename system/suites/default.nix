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

  lqiao-pro = [
    users.lqiao-pro
  ];
}
