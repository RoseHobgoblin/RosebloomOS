{ inputs, ...}:
{
    imports = [ 
    ./hardware-configuration.nix
    ../../system
    ];
    networking.hostName = "silva";
    boot.initrd.kernelModules = [ "amdgpu" ];
}