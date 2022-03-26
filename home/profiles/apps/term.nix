{ pkgs, ... }:
{
  # fix cursor disappear bug
  home.sessionVariables = {
    XCURSOR_THEME = "Adwaita alacritty";
  };

  programs.alacritty = {
    enable = true;
    settings = {
      bell = {
        animation = "EaseOutExpo";
        duration = 5;
        color = "#ffffff";
      };
      colors = {
        primary = {
          background = "#040404";
          foreground = "#c5c8c6";
        };
      };
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Medium";
        };
        size = 12;
      };
      mouse = {
        hints = {
          launcher = {
            program = "xdg-open";
          };
        };
      };
      key_bindings = [
        {
          key = "Return";
          mods = "Control|Shift";
          action = "SpawnNewInstance";
        }
      ];
    };
  };
}
