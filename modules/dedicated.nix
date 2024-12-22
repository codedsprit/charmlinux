{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  config.home.file = {
    ".config/wezterm" = {
      source = ./configs/wezterm;
    };
    ".tmux.conf" = {
      source = ./configs/tmux;
    };
  };
}
