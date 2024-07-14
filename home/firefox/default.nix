{inputs, ...}: {
  
  home = {
    sessionVariables.BROWSER = "firefox";

    # file."firefox-gnome-theme" = {
    #  target = ".mozilla/firefox/default/chrome/firefox-gnome-theme";
    #  source = inputs.firefox-gnome-theme;
    # };

    #file."firefox-sweet-theme" = {
    # target = ".mozilla/firefox/roseuser/chrome/firefox-sweet-theme";
    # source = inputs.firefox-sweet-theme;
    #};

    # file."simplefox" = {
    #   target = ".mozilla/firefox/roseuser/chrome/simplefox";
    #   source = inputs.simplefox;
    # };
    
  };

  programs.firefox = {
    enable = true;
    profiles.roseuser = {
      name = "Roseuser";
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        multi-account-containers
        bitwarden
        duckduckgo-privacy-essentials
        return-youtube-dislikes
        refined-github
        sponsorblock
        ublock-origin
      ];
      settings = {
        "browser.tabs.loadInBackground" = true;
        "widget.gtk.rounded-bottom-corners.enabled" = true;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "svg.context-properties.content.enabled" = true;
        "layers.acceleration.force-enabled" = true;
        "gfx.webrender.all" = true;

        ## Other
        "browser.toolbars.bookmarks.visibility" = "never";
        "identity.fxaccounts.toolbar.enabled" = false;

        ## Passwords
        "signon.rememberSignons" = false;
        "signon.formlessCapture.enabled" = false;
        "signon.privateBrowsingCapture.enabled" = false;
        "network.auth.subresource-http-auth-allow" = 1;
        "editor.truncate_user_pastes" = false;
      };
      search.default = "DuckDuckGo";
      search.force = true;

      # userChrome = ''
      #   @import "firefox-gnome-theme/userChrome.css";
      # '';
      # userContent = ''
      #   @import "firefox-gnome-theme/userContent.css";
      # '';

      # userChrome = ''
      #   @import "firefox-sweet-theme/userChrome.css";
      # '';
      # userContent = ''
      #   @import "firefox-sweet-theme/userContent.css";
      # '';

      #  userChrome = ''
      #    @import "simplefox/chrome/userChrome.css";
      #  '';
      #  userContent = ''
      #    @import "simplefox/chrome/userContent.css";
      #  '';
    };
  };
}