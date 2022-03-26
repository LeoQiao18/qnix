{ pkgs, config, ... }:
{
  programs.tmux = {
    enable = true;
    aggressiveResize = true;
    baseIndex = 1;
    escapeTime = 0;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      nord
    ];
    shortcut = "a";
    terminal = "tmux-256color";
    tmuxinator.enable = true;
    extraConfig = builtins.readFile ./tmux.conf;
    # optional: support more than alacritty
    # but this requires the following in alacritty.yml
    # env:
    #   TERM: xterm-256color
    # set  -g default-terminal "tmux-256color"
    # set -ag terminal-overrides ",xterm-256color:RGB"
  };
}
