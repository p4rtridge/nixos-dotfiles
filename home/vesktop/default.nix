{
  programs.vesktop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      tray = false;
      minimizeToTray = false;
      autoStartMinimized = false;
      enableSplashScreen = false;
      disableMinSize = true;
      checkUpdates = false;
    };
    vencord.settings = {
      autoUpdate = false;
      autoUpdateNotification = false;
      notifyAboutUpdates = false;
      disableMinSize = true;
      useQuickCss = true;
      plugins = {
        FakeNitro.enabled = true;
      };
    };
  };
}
