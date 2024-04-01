{ pkgs, config, ... }: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
  };
}