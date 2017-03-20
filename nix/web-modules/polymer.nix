{ pkgs ? import <nixpkgs> {} }:
  
pkgs.buildBowerComponents {
  name = "polymer";
  generated = ./bower-generated.nix;
  src = ./bower;
}


