{ pkgs, ... }:
let
  name = "codedsprit";
  email = "roshan0x01@gmail.com";
in
{
  programs.git = {
    enable = true;
    userName = name;
    userEmail = email;
    ignores = [ ".DS_Store" ];

    extraConfig = {
      pull.rebase = true;
      credential.helper = if pkgs.stdenv.isDarwin then "osxkeychain" else "cache";
    };

    signing = {
      key = "2B104B77029142ACF4D6F093AAEFE245F1673E11";
      signByDefault = true;
    };

    aliases = {
      lg = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
    };
  };
}
