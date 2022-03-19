{ vimUtils, ... }:
vimUtils.buildVimPlugin {
  name = "vim-ripgrep";
  src = builtins.fetchTarball {
    name   = "RipGrep-v1.0.2";
    url    = "https://github.com/jremmen/vim-ripgrep/archive/v1.0.3.tar.gz";
    sha256 = "0vzdi1q6xh440mvlgsi08d6py8n7ac2yhgixpcs74f4p9160zx1s";
  };
}
