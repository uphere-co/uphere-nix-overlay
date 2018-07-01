{ pkgs
, uphere-nix-overlay
, event-analyzer
, fetchfin
, HCoreNLP
, HUKB
, network-transport-uphere
, language-engine
, nlp-pipeline
, nlp-shared-types
, compute-engine
, textview
, uphere-db
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

  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-ghc-8.2.x.nix") { inherit pkgs; };
  haskellPackages1 = pkgs.haskell.packages.ghc821.override { overrides = hsconfig1; };

  ######################
  ## FFICXX GENERATED ##
  ######################

  ukb = import (uphere-nix-overlay + "/nix/cpp-modules/ukb.nix") { inherit stdenv fetchgit fetchurl; boost = pkgs.boost; };
  ogdf = pkgs.callPackage hs-ogdf { };

  # TODO: this is a dup with configuration-ghc-8.2.x.nix.
  #       we need to seperate out src.nix from configuration.nix
  fficxxSrc = fetchgit {
                url = "https://github.com/wavewave/fficxx";
                rev = "63a52aed0cc033927af3ad0b745ba647fe873292";
                sha256 = "1g150gchbg22134wx6qpi683drccxn80sb4a39lwya9bkldwilla";
              };

  stdcxxNix   = import (fficxxSrc + "/stdcxx-gen/default.nix") {
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
    "nlp-pipeline"          = self.callPackage (import nlp-pipeline) {};
    "nlp-shared-types"      = self.callPackage (import nlp-shared-types) {};
    "rss-scraper"           = self.callPackage (import (fetchfin + "/rss-scraper")) {};

    "compute-engine"        = self.callPackage (import compute-engine) {};
    "textview"              = self.callPackage (import textview) {};
    "uphere-db"             = self.callPackage (import uphere-db) {};
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
