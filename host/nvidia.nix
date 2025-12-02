{
  services.xserver.videoDrivers = [ "nvidia" ];
  
  hardware = {
   graphics.enable = true;
   
   nvidia = {
     open = false;
     prime = {
       sync.enable = true;
  
       intelBusId = "PCI:0:2:0";
       nvidiaBusId = "PCI:1:0:0";
     };
   };
  };
}