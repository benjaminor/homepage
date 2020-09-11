let
  sources = import ./nix/sources.nix;
  nixpkgs = sources."nixpkgs";
  pkgs = import nixpkgs { };
in pkgs.mkShell { buildInputs = with pkgs; [ hugo niv ]; }
