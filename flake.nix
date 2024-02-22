{
  description = "High-grade modified NixOS.";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { nixpkgs, home-manager, ... } @ inputs: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    #nixosConfigurations."rosebloomos" = nixpkgs.lib.nixosSystem {
    #  specialArgs = { inherit inputs system; };
    #  modules = [ ./system/config.nix ];
    #};

    nixosConfigurations."hortus" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      modules = [ ./hosts/hortus/host.nix ];
    };

    nixosConfigurations."silva" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      modules = [ ./hosts/silva/host.nix ];
    };

    homeConfigurations."rosa" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = { inherit inputs; };
      modules = [ ./home/home.nix ];
    };
  };
}
