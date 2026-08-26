{ pkgs, ... }:
{
  boot = {
    loader = {
      grub.enable = true;
      grub.device = "/dev/sdb";
      grub.useOSProber = true;
    };

    kernelPackages = pkgs.linuxPackages_6_6;
    kernelModules = [ "hid-nintendo" ];
    supportedFilesystems = [ "ntfs" ];
  };
}
