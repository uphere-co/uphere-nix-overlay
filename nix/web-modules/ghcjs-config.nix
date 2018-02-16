{ pkgs ? import <nixpkgs> {} }:

self: super:

with pkgs.haskell.lib;

let
    #fetchTarballFromGitHub = { repo, owner, rev, sha256 }:
    #  fetchTarball {
    #    url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
    #    inherit sha256;
    #  };

    removeLibraryHaskellDepends = pnames: depends:
       builtins.filter (e: !(builtins.elem (e.pname or "") pnames)) depends;
    ghcjsDom = pkgs.fetchFromGitHub { "owner" = "ghcjs"; "repo"= "ghcjs-dom"; "rev"= "b5984c8326f6eb1e29f2ca60c0e88eb6ecfdc0c1"; "sha256"= "1dspap1cgjz8fy98bxb18mxyi2gwscrcnzbfblki2jg11c4drll7"; };
    jsaddlePkgs = pkgs.fetchFromGitHub {   "owner"= "wavewave"; "repo"= "jsaddle"; "rev"= "b3f3e66ff3d1f37f6d070bdd986c01ca4db4f70d"; "sha256"=  "0fxrq0fa7c4z3m4rqaj38zi8a0v2zglqyh7b4jnidb9bb4gsk9x8"; };


in
{
  Cabal = self.Cabal_1_24_2_0;
  #ghcjs-dom-jsaddle = dontHaddock ghcjsDom.ghcjs-dom-jsaddle;
  #ghcjs-dom = dontHaddock ghcjsDom.ghcjs-dom;
  #inherit (ghcjsDom) ghcjs-dom-jsffi;

  #ghcjs-dom = doJailbreak super.ghcjs-dom;
  # "jsaddle" = self.callPackage
  #   ({ mkDerivation, aeson, attoparsec, base, base64-bytestring
  #    , bytestring, containers, deepseq, filepath, ghc-prim, http-types
  #    , lens, primitive, process, random, ref-tf, scientific, stm, text
  #    , time, transformers, unordered-containers, vector, stdenv, ghcjs-base
  #    }:
  #    mkDerivation {
  #      pname = "jsaddle";
  #      version = "0.6.0.1";  # 0.9.4.0
  #      sha256 = "1qapqpdkqj73qf4x282a44f4yl31vsarf6wn8bmwlbln5kmakg0n"; #0lk4cbvl2n3zcc709hjcnxw3wm1vd49dqlm12cwy9im4aif1zbq1
  #      libraryHaskellDepends = [
  #        aeson attoparsec base base64-bytestring bytestring containers
  #        deepseq filepath ghc-prim http-types lens primitive process random
  #        ref-tf scientific stm text time transformers unordered-containers
  #        vector ghcjs-base
  #      ];
  #      description = "Interface for JavaScript that works with GHCJS and GHC";
  #      license = stdenv.lib.licenses.mit;
  #      jailbreak = true; # due to text
  #    }) {};


  "jsaddle" = doJailbreak (addBuildDepend (import jsaddlePkgs self).jsaddle self.ghcjs-base);
}

