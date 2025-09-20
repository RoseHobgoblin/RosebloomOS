{ config, lib, inputs, ...}:

{
    imports = [ 
    ./hardware-configuration.nix
    ../../system
    ];
    networking.hostName = "hortus";
    hardware.opengl.enable = true;
}
