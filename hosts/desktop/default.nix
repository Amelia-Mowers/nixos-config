{ inputs, username, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    inputs.dailies-lock.nixosModules.default
  ];

  # Locks the desktop until the day's dailies are done.
  # Settings: ~/.config/dailies/config.toml (kept out of this repo).
  services.dailies-lock = {
    enable = true;
    user = username;
  };

  powerManagement.cpuFreqGovernor = "performance";

  # 8 GiB swapfile on the root drive
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024; # MiB
    }
  ];
}
