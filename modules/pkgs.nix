{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # wezterm
                #(nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    nerd-fonts.jetbrains-mono
    fastfetch
    neovim

    gnupg
    gleam

    fd
    ripgrep
    eza
    fzf
    john
    helix
    marksman
    markdown-oxide
    dprint
    lldb

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
                #zig_0_11
    yazi
    zbar
    passExtensions.pass-otp

    rustscan
    go
    docker
    #    ghidra
    rustup
    openssl

    #rust-analyzer
    pfetch-rs

    gopls
    nuclei
    nsxiv
    amass
    ffuf
    httpx
  ];

}
