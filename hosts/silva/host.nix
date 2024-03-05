{ config, lib, inputs, ...}:

{
    imports = [ 
    ./hardware-configuration.nix
    ../../system/config.nix 
    ];
    networking.hostName = "silva";
    boot.initrd.kernelModules = [ "amdgpu" ];
}