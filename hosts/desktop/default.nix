{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  powerManagement.cpuFreqGovernor = "performance";

  # 8 GiB swapfile on the root drive
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024; # MiB
    }
  ];
}
