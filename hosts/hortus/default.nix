{ config, lib, inputs, ...}:

{
    imports = [ 
    ./hardware-configuration.nix
    ../../system
    ];
    networking.hostName = "hortus";
}
