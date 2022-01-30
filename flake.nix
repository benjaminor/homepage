{
  description = "OpenSUSE home configuration";

  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = inputs@{ nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.hugo = pkgs.hugo;
        devShell =
          pkgs.mkShell { buildInputs = [ pkgs.hugo ]; };
      });
}
