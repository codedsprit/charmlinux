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
    typescript
    mdbook

    rustscan
    go
    docker
    ghidra
    rustup
    openssl

    rust-analyzer
    pfetch-rs

    mpv
    gopls
    nuclei
    nsxiv
    amass
    ffuf
    httpx
  ];

}
