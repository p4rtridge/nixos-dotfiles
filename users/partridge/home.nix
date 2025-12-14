{
  imports = [
    ../../home
    ../../home/heroic
  ];

  home.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    AQ_DRM_DEVICES = "/dev/dri/card0:/dev/dri/card1";
  };

  programs.git = {
    enable = true;
    settings = {
      init = {
        defaultBranch = "main";
      };
      commit = {
        gpgsign = true;
      };
      tag = {
        gpgsign = true;
      };
      user = {
        email = "anhduc130703@gmail.com";
        name = "partridge";
      };
    };
    signing = {
      signByDefault = true;
      key = "3F932F63FFC7F317";
    };
  };
}
