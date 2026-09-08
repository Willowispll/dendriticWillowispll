{
  flake.hosts.micolash.features.environment = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      alacritty
      brave-origin
      xdg-utils
      rofi
      (discord.override {
        withOpenASAR = true;
        withVencord = true;
      })
      picom
      pwvucontrol
      feh
      xrandr
      maim
      zed-editor

      nh
      nil
      nixd
      btop
      fastfetch
      gitMinimal
    ];
  };
}
