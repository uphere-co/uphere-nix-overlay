{ pkgs ? import <nixpkgs> {} }:

with pkgs;


let tbb = callPackage ../nix/cpp-modules/tbb.nix {};
in

stdenv.mkDerivation
{
  name = "test-env";
  buildInputs = [
    tbb
  ];

  
}

