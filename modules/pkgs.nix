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
    rio
    john
                helix

    just
                radare2
    stylua
                pwntools
python312Packages.srvlookup
    nixfmt-rfc-style
    lua-language-server
    nil
    typescript
    mdbook
    zig_0_11
    yazi

    rustscan
    go
    docker
    ghidra
    rustup
    openssl

    #rust-analyzer
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
