{ core, users, hardware, x, ... }:
{
  core = [
    core
    users.root
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
