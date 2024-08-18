{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # Browser
    google-chrome

    # Social
    discord

    # IDEs
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        vscodevim.vim
        llvm-vs-code-extensions.vscode-clangd
        vadimcn.vscode-lldb
        ms-vscode-remote.remote-ssh
        bbenoist.nix
        eamodio.gitlens
      ];
    })

    # Dev tooling
    python3
    clang
    clang-tools
    llvmPackages_latest.llvm
    ninja
    gnumake
  ];

  programs.alacritty.enable = true;
  
  programs.neovim.enable = true;

  programs.ripgrep.enable = true;

  programs.tmux.enable = true;

  programs.git = {
    enable = true;
    userName = "rymdtian";
    userEmail = "rymdtian@gmail.com";
    extraConfig = {
      pull.ff = "only";
      core.editor = "vim";
    };
  };
}
