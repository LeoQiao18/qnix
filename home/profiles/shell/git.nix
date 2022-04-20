{ ... }:
let
  gitConfig = {
    core = {
      editor = "vim";
    };
    init.defaultBranch = "main";
    merge = {
      conflictStyle = "diff3";
      tool = "vim_mergetool";
    };
    pull.rebase = true;
  };
in
{
  programs.git = {
    enable = true;
    userEmail = "qiaofeitong@hotmail.com";
    userName = "LeoQiao18";
    extraConfig = gitConfig;
    ignores = [
      "*.direnv"
      ".envrc"
      ".env"
      "__pycache__"
      "node_modules"
      "*.class"

      # ========== Haskell ==========
      "dist"
      "dist-*"
      "cabal-dev"
      "*.o"
      "*.hi"
      "*.hie"
      "*.chi"
      "*.chs.h"
      "*.dyn_o"
      "*.dyn_hi"
      "hpc"
      "hsenv"
      "cabal-sandbox/"
      "abal.sandbox.config"
      "*.prof"
      "*.aux"
      "*.hp"
      "*.eventlog"
      "stack-work/"
      "abal.project.local"
      "abal.project.local~"
      "HTF/"
      "ghc.environment.*"

      # ========== C ==========
      # Prerequisites
      "*.d"

      # Object files
      "*.o"
      "*.ko"
      "*.obj"
      "*.elf"

      # Linker output
      "*.ilk"
      "*.map"
      "*.exp"

      # Precompiled Headers
      "*.gch"
      "*.pch"

      # Libraries
      "*.lib"
      "*.a"
      "*.la"
      "*.lo"

      # Shared objects (inc. Windows DLLs)
      "*.dll"
      "*.so"
      "*.so.*"
      "*.dylib"

      # Executables
      "*.exe"
      "*.out"
      "*.app"
      "*.i*86"
      "*.x86_64"
      "*.hex"

      # Debug files
      "*.dSYM/"
      "*.su"
      "*.idb"
      "*.pdb"

      # Kernel Module Compile Results
      "*.mod*"
      "*.cmd"
      ".tmp_versions/"
      "modules.order"
      "Module.symvers"
      "Mkfile.old"
      "dkms.conf"

      # LSP
      ".ccls-cache"
      "compile_commands.json"

      # ========== Java ==========
      # Compiled class file
      "*.class"

      # Log file
      "*.log"

      # BlueJ files
      "*.ctxt"

      # Mobile Tools for Java (J2ME)
      "mtj.tmp/"

      # Package Files #
      "*.jar"
      "*.war"
      "*.nar"
      "*.ear"
      "*.zip"
      "*.tar.gz"
      "*.rar"

      # virtual machine crash logs, see http://www.java.com/en/download/help/error_hotspot.xml
      "s_err_pid*"
      "eplay_pid*"
    ];
  };
}
