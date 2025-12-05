{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = with pkgs; [
        qt6Packages.fcitx5-configtool
        fcitx5-bamboo
      ];
      waylandFrontend = true;
      settings = {
        globalOptions = {
          Hotkey = {
            EnumerateWithTriggerKeys = "True";
            AltTriggerKeys = "";
            EnumerateForwardKeys = "";
            EnumerateBackwardKeys = "";
            EnumerateSkipFirst = "False";
            EnumerateGroupForwardKeys = "";
            EnumerateGroupBackwardKeys = "";
            ActivateKeys = "";
            DeactivateKeys = "";
            PrevPage = "";
            NextPage = "";
            PrevCandidate = "";
            NextCandidate = "";
            TogglePreedit = "";
            ModifierOnlyKeyTimeout = "250";
          };

          "Hotkey/TriggerKeys" = {
            "0" = "Super+space";
          };

          Behavior = {
            ActiveByDefault = "False";
            resetStateWhenFocusIn = "No";
            ShareInputState = "No";
            PreeditEnabledByDefault = "True";
            ShowInputMethodInformation = "False";
            showInputMethodInformationWhenFocusIn = "False";
            CompactInputMethodInformation = "False";
            ShowFirstInputMethodInformation = "False";
            DefaultPageSize = "5";
            OverrideXkbOption = "False";
            CustomXkbOption = "";
            EnabledAddons = "";
            DisabledAddons = "";
            PreloadInputMethod = "True";
            AllowInputMethodForPassword = "True";
            ShowPreeditForPassword = "False";
            AutoSavePeriod = "30";
          };
        };

        inputMethod = {
          GroupOrder."0" = "Default";
          "Groups/0" = {
            Name = "Default";
            "Default Layout" = "us";
            DefaultIM = "bamboo";
          };
          "Groups/0/Items/0" = {
            Name = "keyboard-us";
            Layout = "";
          };
          "Groups/0/Items/1" = {
            Name = "bamboo";
            Layout = "";
          };
        };

        addons = {
          keyboard.globalSection = {
            PageSize = "5";
            PrevCandidate = "";
            NextCandidate = "";
            EnableEmoji = "False";
            EnableQuickPhraseEmoji = "False";
            EnableLongPress = "False";
            UseNewComposeBehavior = "True";
            "EnableHintByDefault" = "False";
            "Hint Trigger" = "";
            "One Time Hint Trigger" = "";
          };

          bamboo.globalSection = {
            RestoreKeyStroke = "";
            InputMethod = "Telex";
            OutputCharset = "Unicode";
            SpellCheck = "False";
            Macro = "False";
            CapitalizeMacro = "False";
            AutoNonVnRestore = "True";
            ModernStyle = "False";
            FreeMarking = "True";
            DisplayUnderline = "False";
          };
        };
      };
    };
  };
}
