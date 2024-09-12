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
    fzf

    just
    stylua
    nixfmt-rfc-style
    lua-language-server
    nil

    rustscan
    go
    docker

    pfetch-rs
    mpv
    gopls
    nuclei
    nsxiv
    amass
  ];

}
