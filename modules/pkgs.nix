{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # wezterm
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    fastfetch
    neovim

    gnupg

    fd
    ripgrep
    eza

    just
    stylua
    nixfmt-rfc-style
    lua-language-server
    nil

    rustscan
    go

    pfetch-rs
    mpv
    gopls
    nsxiv
  ];

}
