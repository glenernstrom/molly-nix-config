{

  description = "My first flake!";

  inputs = {
    # nixpkgs = {
    #   url = "github:NixOS/nixpkgs/nixos-24.11";
    # }; OR you can write:
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    # further shorthand
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };


  outputs = {self, nixpkgs, ...}:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
     molly = lib.nixosSystem {
       system = "x86_64-linux";
       modules = [ ./configuration.nix ];
     };
    };
  };

}
