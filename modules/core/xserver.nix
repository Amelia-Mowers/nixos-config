{ username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us,fr";
    };

    # Password at the LightDM login screen (no autologin), straight into Hyprland.
    displayManager.defaultSession = "hyprland";
    libinput = {
      enable = true;
    };
  };
  # To prevent getting stuck at shutdown
  systemd.settings.Manager.DefaultTimeoutStopSec = "10s";
}
