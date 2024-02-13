{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        swaynotificationcenter
        swayosd
    ];

    xdg.configFile.swaync = {
        source = ../../../non-nix/swaync;
        recursive = true;
    };
}