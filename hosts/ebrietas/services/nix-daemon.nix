{inputs, ...}: {
  flake.hosts.ebrietas.services.nix-daemon = {
    imports = [inputs.finix.nixosModules.nix-daemon];
    services.nix-daemon = {
      enable = true;
      settings = {
        max-jobs = 6;

        experimental-features = [
          "nix-command"
          "flakes"
        ];
        trusted-users = [
          "root"
          "@wheel"
        ];
      };
    };
  };
}
