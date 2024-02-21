{ config, lib, inputs, ...}:

{
    imports = [ 
    ./hardware-configuration.nix
    ../../system/config.nix 
    ];
    networking.hostName = "hortus";
}