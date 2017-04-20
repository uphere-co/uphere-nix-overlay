{ pkgs ? import <nixpkgs> {} }:
  
pkgs.buildBowerComponents {
  name = "polymer";
  generated = ./bower-generated-experimental.nix;
  src = ./bower-experimental;
}


