{ config, ... }:

let
  modules = [
    ## Add more modules here
    ./pkgs.nix
    ./nix.nix
    ./pass.nix
    ./dedicated.nix
    ./zsh.nix
    ./zoxide.nix
    ./starship.nix
    ./bat.nix
    ./direnv.nix
    ./ssh.nix
    ./yazi.nix
  ];
in
{
  imports = modules;
  xdg.dataHome = "${config.home.homeDirectory}/.local/share";
  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}
