{
  services.xserver.videoDrivers = [ "modesetting" "nvidia" ];
  
  hardware = {
   graphics = {
     enable = true;
     enable32Bit = true;
   };
   
   nvidia = {
     open = false;
     prime = {
       offload = {
         enable = true;
       };
  
       intelBusId = "PCI:0:2:0";
       nvidiaBusId = "PCI:1:0:0";
     };
   };
  };
}
