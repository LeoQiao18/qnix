final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  # then, call packages with `final.callPackage`
  pony = prev.callPackage ./pony { };
  vimPlugins = prev.vimPlugins // {
    fzf-hoogle = prev.callPackage ./vimPlugins/fzf-hoogle.nix { };
    vim-gtfo = prev.callPackage ./vimPlugins/vim-gtfo.nix { };
    vim-ripgrep = prev.callPackage ./vimPlugins/vim-ripgrep.nix { };
  };
}
