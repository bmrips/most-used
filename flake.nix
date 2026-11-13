{
  description = "Find your most-used shell commands";

  inputs = {
    defaults.url = "github:bmrips/defaults";
    defaults.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.defaults.flakeModule ];
      systems = inputs.nixpkgs.lib.systems.flakeExposed;
      perSystem = { config, pkgs, ... }: {
        ecosystems.haskell.cabalPackage.name = "most-used";
        make-shells.default.packages = [ pkgs.haskell-language-server ];
        packages.default = config.ecosystems.haskell.cabalPackage.drv;
      };
    };
}
