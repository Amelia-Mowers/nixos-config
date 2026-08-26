{ pkgs, ... }:
{
  home.packages = with pkgs; [
    blockbench
    code-cursor
    discord
    
    ## Multimedia
    audacity
    gimp
    media-downloader
    obs-studio
    pavucontrol
    soundwireserver
    video-trimmer
    vlc

    ## Office
    libreoffice
    gnome-calculator

    ## Utility
    dconf-editor
    gnome-disk-utility
    mission-center # GUI resources monitor
    zenity

    ## Level editor
    ldtk
    tiled
  ];
}
