{ pkgs ? import <nixpkgs> {} }:

self: super:

with pkgs.haskell.lib;

let removeLibraryHaskellDepends = pnames: depends:
       builtins.filter (e: !(builtins.elem (e.pname or "") pnames)) depends;
    ghcjsDom = import (pkgs.fetchFromGitHub { "owner" = "ghcjs"; "repo"= "ghcjs-dom"; "rev"= "b5984c8326f6eb1e29f2ca60c0e88eb6ecfdc0c1"; "sha256"= "1dspap1cgjz8fy98bxb18mxyi2gwscrcnzbfblki2jg11c4drll7"; }) self;
    jsaddlePkgs = import (pkgs.fetchFromGitHub {   "owner"= "wavewave"; "repo"= "jsaddle"; "rev"= "b3f3e66ff3d1f37f6d070bdd986c01ca4db4f70d"; "sha256"=  "0fxrq0fa7c4z3m4rqaj38zi8a0v2zglqyh7b4jnidb9bb4gsk9x8"; }) self;


in
{
  Cabal = self.Cabal_1_24_2_0;
  #ghcjs-dom-jsaddle = dontHaddock ghcjsDom.ghcjs-dom-jsaddle;
  #ghcjs-dom = dontHaddock ghcjsDom.ghcjs-dom;
  #inherit (ghcjsDom) ghcjs-dom-jsffi;

  #ghcjs-dom = doJailbreak super.ghcjs-dom;
  jsaddle = doJailbreak (addBuildDepend jsaddlePkgs.jsaddle self.ghcjs-base);
}

