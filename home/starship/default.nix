{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$character";
      character = {
        success_symbol = "[ ᐉ](bright-green bold)";
        error_symbol = "[ ᐉ](bright-red)";
        vicmd_symbol = "[ ᐉ](bright-yellow)";
      };
      right_format = "$cmd_duration";
      directory = {
        format = "[▉]($style)[(bg:background fg:none) $path ](inverted)[▕]($style)";
        style = "bg:background fg:none";
        read_only = "󰌾 ";
        read_only_style = "fg:red bg:black";
        truncation_symbol = "…/";
        truncation_length = 3;
      };
      directory = {
        format = "[▉]($style)[(bg:background fg:none) \ue725 $branch ](inverted)[▕]($style)";
        style = "bg:background fg:none";
      };
      character.format = " ";
      git_branch = {
        
      };
    };
  };
}