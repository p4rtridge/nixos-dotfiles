{
  services.resolved = {
    enable = true;
    dnsovertls = "true";
    dnssec = "true";
    extraConfig = ''
      DNS=45.90.28.0#7d1aba.dns.nextdns.io
      DNS=2a07:a8c0::#7d1aba.dns.nextdns.io
      DNS=45.90.30.0#7d1aba.dns.nextdns.io
      DNS=2a07:a8c1::#7d1aba.dns.nextdns.io
    '';
  };
}
