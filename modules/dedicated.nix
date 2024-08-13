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
  };

}
