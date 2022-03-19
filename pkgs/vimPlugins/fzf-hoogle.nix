{ vimUtils, ... }:
vimUtils.buildVimPlugin {
  name = "fzf-hoogle-vim";
  src = builtins.fetchTarball {
    name   = "fzf-hoogle-vim-v2.3.0";
    url    = "https://github.com/monkoose/fzf-hoogle.vim/archive/v2.3.0.tar.gz";
    sha256 = "00ay9250wdl8ym70dpv4zbs49g40dla6i48bk1zl95lp62kld4hr";
  };
}
