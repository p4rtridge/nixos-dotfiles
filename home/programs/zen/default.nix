{ config, inputs, ... }:
{
  imports = with inputs; [
    zen-browser.homeModules.twilight
  ];

  home.file.".zen/default/chrome/userChrome.css".source = ./userChrome.css;
  home.file.".zen/default/chrome/catppuccin_theme.css".source = ./catppuccin_theme.css;
  home.file.".zen/default/chrome/better_findbar.css".source = ./better_findbar.css;
  home.file.".zen/default/chrome/floating_statusbar.css".source = ./floating_statusbar.css;
  home.file.".zen/default/chrome/no_sidebar_scrollbar.css".source = ./no_sidebar_scrollbar.css;
  home.file.".zen/default/chrome/remove_tab_x.css".source = ./remove_tab_x.css;

  xdg.mimeApps = let
    associations = builtins.listToAttrs (map (name: {
        inherit name;
        value = let
          zen-browser = config.programs.zen-browser.package;
        in
          zen-browser.meta.desktopFileName;
      }) [
        "application/x-extension-shtml"
        "application/x-extension-xhtml"
        "application/x-extension-html"
        "application/x-extension-xht"
        "application/x-extension-htm"
        "x-scheme-handler/unknown"
        "x-scheme-handler/mailto"
        "x-scheme-handler/chrome"
        "x-scheme-handler/about"
        "x-scheme-handler/https"
        "x-scheme-handler/http"
        "application/xhtml+xml"
        "application/json"
        "text/plain"
        "text/html"
      ]);
  in {
    associations.added = associations;
    defaultApplications = associations;
  };

  programs.zen-browser = {
    enable = true;

    policies = let
        mkLockedAttrs = builtins.mapAttrs (_: value: {
          Value = value;
          Status = "locked";
        });

        mkExtensionSettings = builtins.mapAttrs (_: pluginId: {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/${pluginId}/latest.xpi";
          installation_mode = "force_installed";
        });
      in {
        DisableAppUpdate = true;
        DisableFeedbackCommands = true;
        DisablePocket = true;
        DisableTelemetry = true;
        OfferToSaveLogins = false;
        NoDefaultBookmarks = true;
        DisableFirefoxStudies = true;
        DontCheckDefaultBrowser = true;
        SanitizeOnShutdown = {
          FormData = true;
          Cache = true;
        };

        ExtensionSettings = mkExtensionSettings {
          "uBlock0@raymondhill.net" = "ublock-origin";
        };

        Preferences = mkLockedAttrs {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "layout.show_previous_page" = false;
          "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
          "browser.startup.page" = 0;
          "browser.newtabpage.enabled" = false;
        };
    };

    profiles.default = rec {
      settings = {
        "zen.urlbar.replace-newtab" = false;
        "zen.tabs.show-newtab-vertical" = true;
        "zen.urlbar.behavior" = "float";
        "zen.view.compact.enable-at-startup" = true;
        "zen.view.show-newtab-button-top" = false;
        "zen.view.window.scheme" = 0;
        "zen.welcome-screen.seen" = true;
        "zen.workspaces.continue-where-left-off" = false;
        "zen.view.compact.toolbar-flash-popup" = false;
        "zen.view.compact.show-background-tab-toast" = true;
        "zen.view.use-single-toolbar" = false;
        "zen.view.sidebar-expanded" = false;
        "zen.tabs.vertical.right-side" = true;
      };

      search = {
        force = true;
        default = "google";
      };
    };
  };
}

