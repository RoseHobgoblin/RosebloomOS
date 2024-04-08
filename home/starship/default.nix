{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$character";
      right_format = "$cmd_duration";

      character = {
        success_symbol = "[ ᐉ](bright-green)";
        error_symbol = "[ ᐉ](bright-red)";
        vicmd_symbol = "[ ᐉ](bright-yellow)";
      };

      directory = {
        format = "[▉]($style)[(bg:background fg:none) $path ](inverted)[▕]($style)";
        style = "bg:background fg:none";
        read_only = "󰌾 ";
        read_only_style = "fg:red bg:black";
        truncation_symbol = "…/";
        truncation_length = 3;
      };

      git_branch = {
        format = "[▉]($style)[(bg:background fg:none) $branch ](inverted)[▕]($style)";
        style = "bg:background fg:none";
      };
    };
  };
}