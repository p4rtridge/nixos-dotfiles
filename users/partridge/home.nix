{
  imports = [
    ../../home
  ];

  home.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };

  programs.git = {
    enable = true;
    userEmail = "anhduc130703@gmail.com";
    userName = "partridge";
  };
}
