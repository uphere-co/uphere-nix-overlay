{ pkgs
, uphere-nix-overlay
, event-analyzer
, fetchfin
, HCoreNLP
, HUKB
, network-transport-uphere
, language-engine
, nlp-shared-types
, textview
, uphere-network-util
, uphere-opaleye
, corenlp
, corenlp_models
#
, fetchgit
, fetchurl
, haskellPackages
, stdenv
, jdk
, fasttext
, hs-ogdf
}:

let
  # TODO: we should refactor this out.
  fficxxSrc = fetchgit {
                url = "https://github.com/wavewave/fficxx";
                rev = "38f6da9be7ec70e5a64f1e377a81974a27ea89ad";
                sha256 = "03bzmk9mj5kfs75hcm6pyjfdzrzlfhq76zdvsdzvwzqawfbflpar";
                #rev = "971207e9b413d99caedc36d17d8d0a88c09309a6";
                #sha256 = "0v6ga7manj33zrjdp4s08a0sdd5id0z3k7llpcfiyfl78i782y0z";
              };

  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-ghc-8.4.x.nix") { inherit pkgs fficxxSrc; };
  haskellPackages1 = pkgs.haskell.packages.ghc843.override { overrides = hsconfig1; };

  ######################
  ## FFICXX GENERATED ##
  ######################

  ukb = import (uphere-nix-overlay + "/nix/cpp-modules/ukb.nix") { inherit stdenv fetchgit fetchurl; boost = pkgs.boost; };
  ogdf = pkgs.callPackage hs-ogdf { };

  stdcxxNix = import (fficxxSrc + "/stdcxx-gen/default.nix") {
    inherit (pkgs) stdenv;
    haskellPackages = haskellPackages1;
  };

  fastTextNix = import (language-engine + "/fasttext/default.nix") {
                  inherit stdenv;
                  haskellPackages = haskellPackages1;
                };

  OGDFNix     = import (hs-ogdf + "/gen/default.nix") {
                  inherit (pkgs) stdenv;
                  haskellPackages = haskellPackages1;
                };

  HUKBNix     = import (HUKB + "/HUKB-generate/default.nix") {
                  inherit stdenv;
                  haskellPackages = haskellPackages1;
                };

  hsconfig-gen =
    self: super: {
      "fastText"     = self.callPackage fastTextNix { inherit fasttext; };
      "OGDF"        = self.callPackage OGDFNix { inherit ogdf; };
      "stdcxx"      = self.callPackage stdcxxNix { };
      "HUKB"        =  self.callPackage HUKBNix { inherit ukb; boost = pkgs.boost; };

    };


  ######################

  hsconfig2 = self: super: {
    "event-analyzer"        = self.callPackage event-analyzer {};
    "HCoreNLP"              = self.callPackage (import HCoreNLP) {
                                inherit jdk corenlp corenlp_models;
                              };
    "HCoreNLP-Proto"        = self.callPackage (import (HCoreNLP + "/HCoreNLP-Proto")) {};
    "network-transport-uphere" = self.callPackage (import network-transport-uphere) {};
    "newsapi"               = self.callPackage (import (fetchfin + "/newsapi")) {};
    "nlp-shared-types"      = self.callPackage (import nlp-shared-types) {};
    "rss-scraper"           = self.callPackage (import (fetchfin + "/rss-scraper")) {};

    "textview"              = self.callPackage (import textview) {};
    "uphere-network-util" = self.callPackage (import uphere-network-util) {};
    "uphere-opaleye"        = self.callPackage (import uphere-opaleye) {};

    # LANGUAGE ENGINE for the time being
    "HUKB-driver" = self.callPackage (import (HUKB + "/HUKB-driver")) {};
    "HWordNet"              = self.callPackage (import (language-engine + "/HWordNet")) {};
    "nlp-types"             = self.callPackage (import (language-engine + "/nlp-types")) {};
  };

in
  self: super: (hsconfig1    self super //
                hsconfig-gen self super //
                hsconfig2    self super
               )
