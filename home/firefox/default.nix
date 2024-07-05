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
  };

  programs.firefox = {
    enable = true;
    profiles.roseuser = {
      name = "Roseuser";
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
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
        # "gnomeTheme.hideSingleTab" = false;
        # "gnomeTheme.bookmarksToolbarUnderTabs" = true;
        # "gnomeTheme.normalWidthTabs" = false;
        # "gnomeTheme.tabsAsHeaderbar" = false;
        # GTK Theme
        #"browser.tabs.drawInTitlebar" = true;
        #"extensions.activeThemeID" = "firefox-compact@mozilla.org";

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
      #   @import "firefox-sweet-theme/userChrome.css";
      # '';
      # userContent = ''
      #   @import "firefox-sweet-themetheme/userContent.css";
      # '';
    };
  };
}