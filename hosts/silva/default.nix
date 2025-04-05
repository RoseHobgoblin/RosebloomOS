{ config, lib, inputs, pkgs, ...}:
let
    theme = import ../../theme/signalis.nix { inherit pkgs; };
in
{
    imports = [ 
    ./hardware-configuration.nix
    ../../system
    ];
    networking.hostName = "silva";
    boot.initrd.kernelModules = [ "amdgpu" ];
}