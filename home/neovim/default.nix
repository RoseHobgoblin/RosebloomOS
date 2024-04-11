{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    plugins = with vimPlugins [
      neogit
    ]
  };
}
  