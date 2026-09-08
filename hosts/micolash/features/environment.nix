{
  flake.hosts.micolash.features.environment = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      nh
      nil
      nixd
      btop
      fastfetch
      gitMinimal
    ];
  };
}
