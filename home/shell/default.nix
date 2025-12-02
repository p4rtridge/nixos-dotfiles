{
  home.shellAliases = {
    ll = "ls -l";
    mkdir = "mkdir -p";
    ".." = "cd ..";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion = {
      enable = true;
    };
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
      ];
    };
    history = {
      ignoreDups = true;
      ignoreSpace = true;
      save = 1000;
    };
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec hyprland
      fi
    '';
  };

  programs.alacritty = {
    enable = true;
    theme = "catppuccin_mocha";
    settings = {
      window = {
        padding = {
          x = 3;
          y = 3;
        };
      };
      font = {
        normal = {
          family = "Maple Mono NF";
          style = "Regular";
        };
        italic = {
          style = "Italic";
        };
        bold_italic = {
          style = "Bold Italic";
        };
      };
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

      bun = {
        format = "via [$symbol]($style)";
      };
      buf = {
        format = "with [$symbol]($style)";
      };
      c = {
        format = "via [$symbol($name)]($style)";
      };
      cmake = {
        format = "via [$symbol]($style)";
      };
      cobol = {
        format = "via [$symbol]($style)";
      };
      cpp = {
        format = "via [$symbol($name)]($style)";
      };
      crystal = {
        format = "via [$symbol]($style)";
      };
      daml = {
        format = "via [$symbol]($style)";
      };
      dart = {
        format = "via [$symbol]($style)";
      };
      deno = {
        format = "via [$symbol]($style)";
      };
      dotnet = {
        format = "[$symbol(🎯 $tfm )]($style)";
      };
      elixir = {
        format = "via [$symbol]($style)";
      };
      elm = {
        format = "via [$symbol]($style)";
      };
      erlang = {
        format = "via [$symbol]($style)";
      };
      fennel = {
        format = "via [$symbol]($style)";
      };
      gleam = {
        format = "via [$symbol]($style)";
      };
      golang = {
        format = "via [$symbol]($style)";
      };
      gradle = {
        format = "via [$symbol]($style)";
      };
      haskell = {
        format = "via [$symbol]($style)";
      };
      haxe = {
        format = "via [$symbol]($style)";
      };
      helm = {
        format = "via [$symbol]($style)";
      };
      java = {
        format = "via [$symbol]($style)";
      };
      julia = {
        format = "via [$symbol]($style)";
      };
      kotlin = {
        format = "via [$symbol]($style)";
      };
      lua = {
        format = "via [$symbol]($style)";
      };
      meson = {
        format = "via [$symbol]($style)";
      };
      mojo = {
        format = "with [$symbol]($style)";
      };
      nim = {
        format = "via [$symbol]($style)";
      };
      nodejs = {
        format = "via [$symbol]($style)";
      };
      ocaml = {
        format = "via [$symbol(\\($switch_indicator$switch_name\\) )]($style)";
      };
      odin = {
        format = "via [$symbol]($style)";
      };
      opa = {
        format = "via [$symbol]($style)";
      };
      perl = {
        format = "via [$symbol]($style)";
      };
      php = {
        format = "via [$symbol]($style)";
      };
      pixi = {
        format = "via [$symbol($environment )]($style)";
      };
      pulumi = {
        format = "via [$symbol$stack]($style)";
      };
      purescript = {
        format = "via [$symbol]($style)";
      };
      python = {
        format = "via [$symbol]($style)";
      };
      quarto = {
        format = "via [$symbol]($style)";
      };
      raku = {
        format = "via [$symbol]($style)";
      };
      red = {
        format = "via [$symbol]($style)";
      };
      rlang = {
        format = "via [$symbol]($style)";
      };
      ruby = {
        format = "via [$symbol]($style)";
      };
      rust = {
        format = "via [$symbol]($style)";
      };
      scala = {
        format = "via [$symbol]($style)";
      };
      solidity = {
        format = "via [$symbol]($style)";
      };
      swift = {
        format = "via [$symbol]($style)";
      };
      typst = {
        format = "via [$symbol]($style)";
      };
      vagrant = {
        format = "via [$symbol]($style)";
      };
      vlang = {
        format = "via [$symbol]($style)";
      };
      zig = {
        format = "via [$symbol]($style)";
      };
    };
  };
}
