{ vimUtils, ... }:
vimUtils.buildVimPlugin {
  name = "vim-gtfo";
  src = builtins.fetchTarball {
    name   = "Vim-Gtfo-v2.0.0";
    url    = "https://github.com/justinmk/vim-gtfo/archive/2.0.0.tar.gz";
    sha256 = "0zq3pjdiahpq53g27rdd5jjfrz8kddqvm1jpsdqamkd1rjvrwr1y";
  };
}
