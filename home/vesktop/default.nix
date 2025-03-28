{pkgs, ...}: {
  # credits: neoney
  xdg.configFile."vesktop/themes/RosePine.theme.css".source = ./theme.css;
  home.packages = [
  pkgs.vesktop
#    (pkgs.vesktop.overrideAttrs (old: {
 #     patches = (old.patches or [ ]) ++ [ ./__readonlyFix.patch ];
  #    postFixup =
  #      old.postFixup
  #      + ''
#          wrapProgram $out/bin/vesktop \
 #           --add-flags "--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-accelerated-mjpeg-decode --enable-accelerated-video --ignore-gpu-blacklist --enable-native-gpu-memory-buffers --enable-gpu-rasterization --enable-gpu --enable-features=WebRTCPipeWireCapturer --enable-wayland-ime"
  #      '';
  #  }))
  ];

  xdg.configFile."vesktop/settings.json".text = builtins.toJSON {
    discordBranch = "canary";
    firstLaunch = false;
    arRPC = "on";
    splashColor = "rgb(219, 222, 225)";
    splashBackground = "rgb(49, 51, 56)";
    enableMenu = false;
    staticTitle = false;
  };

  xdg.configFile."vesktop/settings/settings.json".text = builtins.toJSON {
    notifyAboutUpdates = false;
    autoUpdate = false;
    autoUpdateNotification = false;
    useQuickCss = true;
    themeLinks = [];
    enabledThemes = ["RosePine.theme.css"];
    enableReactDevtools = true;
    frameless = false;
    transparent = false;
    winCtrlQ = false;
    macosTranslucency = false;
    disableMinSize = false;
    winNativeTitleBar = false;
    plugins = {
      AlwaysAnimate.enabled = false;
      AlwaysTrust.enabled = true;
      AnonymiseFileNames.enabled = false;
      BadgeAPI.enabled = true;
      CommandsAPI.enabled = true;
      ContextMenuAPI.enabled = true;
      MemberListDecoratorsAPI.enabled = false;
      MessageAccessoriesAPI.enabled = false;
      MessageDecorationsAPI.enabled = false;
      MessageEventsAPI.enabled = false;
      MessagePopoverAPI.enabled = false;
      NoticesAPI.enabled = true;
      ServerListAPI.enabled = false;
      SettingsStoreAPI.enabled = false;
      "WebRichPresence (arRPC)".enabled = false;
      BANger.enabled = false;
      BetterFolders.enabled = false;
      BetterGifAltText.enabled = true;
      BetterNotesBox.enabled = false;
      BetterRoleDot.enabled = false;
      BetterUploadButton.enabled = true;
      BlurNSFW.enabled = false;
      CallTimer.enabled = true;
      ClearURLs.enabled = true;
      ColorSighted.enabled = false;
      ConsoleShortcuts.enabled = false;
      CrashHandler.enabled = true;
      CustomRPC.enabled = false;
      DisableDMCallIdle.enabled = false;
      EmoteCloner.enabled = false;
      Experiments.enabled = true;
      F8Break.enabled = false;
      FakeNitro.enabled = true;
      FakeProfileThemes.enabled = false;
      Fart2.enabled = false;
      FixInbox.enabled = false;
      ForceOwnerCrown.enabled = true;
      FriendInvites.enabled = false;
      FxTwitter.enabled = false;
      GameActivityToggle.enabled = true;
      GifPaste.enabled = false;
      HideAttachments.enabled = false;
      iLoveSpam.enabled = false;
      ImplicitRelationships.enabled = true;
      IgnoreActivities.enabled = false;
      ImageZoom.enabled = true;
      InvisibleChat.enabled = false;
      KeepCurrentChannel.enabled = false;
      LastFMRichPresence.enabled = false;
      LoadingQuotes.enabled = false;
      MemberCount.enabled = true;
      MessageClickActions.enabled = false;
      MessageLinkEmbeds.enabled = true;
      MessageLogger.enabled = true;
      MessageTags.enabled = false;
      MoreCommands.enabled = false;
      MoreKaomoji.enabled = false;
      MoreUserTags.enabled = false;
      Moyai.enabled = false;
      MuteNewGuild.enabled = true;
      NoBlockedMessages.enabled = false;
      NoCanaryMessageLinks.enabled = false;
      NoDevtoolsWarning.enabled = true;
      NormalizeMessageLinks.enabled = true;
      NoF1.enabled = true;
      NoReplyMention.enabled = true;
      NoScreensharePreview.enabled = false;
      NoTrack.enabled = true;
      NoUnblockToJump.enabled = true;
      NSFWGateBypass.enabled = false;
      oneko.enabled = false;
      petpet.enabled = false;
      PinDMs.enabled = false;
      PlainFolderIcon.enabled = false;
      PlatformIndicators.enabled = true;
      PronounDB.enabled = false;
      QuickMention.enabled = false;
      QuickReply.enabled = true;
      ReadAllNotificationsButton.enabled = true;
      RelationshipNotifier.enabled = true;
      RevealAllSpoilers.enabled = false;
      ReverseImageSearch.enabled = false;
      ReviewDB.enabled = true;
      RoleColorEverywhere.enabled = false;
      SearchReply.enabled = true;
      SendTimestamps.enabled = false;
      ServerListIndicators.enabled = false;
      Settings = {
        enabled = true;
        settingsLocation = "aboveActivity";
      };
      ShikiCodeblocks.enabled = true;
      ShowHiddenChannels.enabled = false;
      ShowMeYourName.enabled = false;
      SilentMessageToggle.enabled = false;
      SilentTyping.enabled = true;
      SortFriendRequests.enabled = false;
      SpotifyControls.enabled = false;
      SpotifyCrack.enabled = false;
      SpotifyShareCommands.enabled = false;
      StartupTimings.enabled = false;
      SupportHelper.enabled = true;
      TimeBarAllActivities.enabled = false;
      TypingIndicator.enabled = true;
      TypingTweaks.enabled = true;
      Unindent.enabled = true;
      ReactErrorDecoder.enabled = false;
      UrbanDictionary.enabled = false;
      UserVoiceShow.enabled = false;
      USRBG.enabled = false;
      UwUifier.enabled = true;
      VoiceChatDoubleClick.enabled = true;
      VcNarrator.enabled = false;
      ViewIcons.enabled = false;
      ViewRaw.enabled = false;
      WebContextMenus = {
        enabled = true;
        addBack = false;
      };
      GreetStickerPicker.enabled = false;
      WhoReacted.enabled = true;
      Wikisearch.enabled = false;
    };
    notifications = {
      timeout = 5000;
      position = "bottom-right";
      useNative = "not-focused";
      logLimit = 50;
    };
    cloud = {
      authenticated = false;
      url = "https://api.vencord.dev/";
      settingsSync = false;
      settingsSyncVersion = 1708368714501;
    };
  };
}
