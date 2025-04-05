{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
    ];
    extraConfig = ''
      set number
      set relativenumber
      set tabstop=4
      set shiftwidth=4
      set expandtab
    '';
  };
}
  