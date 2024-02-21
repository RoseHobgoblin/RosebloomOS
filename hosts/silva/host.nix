{ config, lib, inputs, ...}:

{
    imports = [ ../../system/config.nix ];
    networking.hostName = "hortus";
}