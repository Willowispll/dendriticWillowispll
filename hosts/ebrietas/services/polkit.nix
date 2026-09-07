{inputs, ...}: {
  flake.hosts.ebrietas.services.polkit = {
    imports = [inputs.finix.nixosModules.polkit];
    services.polkit.enable = true;
  };
}
