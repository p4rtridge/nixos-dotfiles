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
      user = {
        email = "anhduc130703@gmail.com";
        name = "partridge";
      };
    };
  };
}
