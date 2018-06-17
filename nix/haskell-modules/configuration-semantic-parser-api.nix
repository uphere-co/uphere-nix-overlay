{ pkgs
, uphere-nix-overlay
, event-analyzer
, fetchfin
, graph-algorithms
, HCoreNLP
, HFrameNet
, HUKB
, HWordNet
, lexicon
, lexicon-builder
, multi-word-tagger
, network-transport-uphere
, nlp-pipeline
, nlp-shared-types
, nlp-types
, OntoNotes
, PropBank
, semantic-parser-api-compute
, semantic-parser-api-ghcjs
, semantic-role-labeler
, semantic-types
, textview
, time-tagger
, uphere-db
, uphere-network-util
, uphere-opaleye
, VerbNet
, wiki-ner
, corenlp
, corenlp_models
#
, fetchgit
, fetchurl
, haskellPackages
, stdenv
, jdk
, fasttext
}:

let

  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-ghc-8.2.x.nix") { inherit pkgs; };
  haskellPackages1 = pkgs.haskell.packages.ghc821.override { overrides = hsconfig1; };
  fastTextNix = import (semantic-role-labeler + "/fasttext/default.nix") {
    inherit stdenv;
    haskellPackages = haskellPackages1;
  };
  hsconfig2 = self: super: {
    "event-analyzer"        = self.callPackage event-analyzer {};
    "HCoreNLP"              = self.callPackage (import HCoreNLP) { inherit jdk corenlp corenlp_models; };
    "HCoreNLP-Proto"        = self.callPackage (import (HCoreNLP + "/HCoreNLP-Proto")) {};
    "network-transport-uphere" = self.callPackage (import network-transport-uphere) {};
    "newsapi"               = self.callPackage (import (fetchfin + "/newsapi")) {};
    "nlp-pipeline"          = self.callPackage (import nlp-pipeline) {};
    "nlp-shared-types"      = self.callPackage (import nlp-shared-types) {};
    "rss-scraper"           = self.callPackage (import (fetchfin + "/rss-scraper")) {};

    "semantic-parser-api-compute" = self.callPackage (import semantic-parser-api-compute) {};
    "textview"              = self.callPackage (import textview) {};
    "uphere-db"             = self.callPackage (import uphere-db) {};
    "uphere-network-util" = self.callPackage (import uphere-network-util) {};
    "uphere-opaleye"        = self.callPackage (import uphere-opaleye) {};

    # LANGUAGE ENGINE
    "fastText"              = self.callPackage fastTextNix { inherit fasttext; };
    "graph-algorithms"      = self.callPackage (import (semantic-role-labeler + "/graph-algorithms"))    {};
    "HFrameNet"             = self.callPackage (import (semantic-role-labeler + "/HFrameNet")) {};
    "HWordNet"              = self.callPackage (import (semantic-role-labeler + "/HWordNet")) {};
    "lexicon"               = self.callPackage (import (semantic-role-labeler + "/lexicon")) {};
    "lexicon-builder"       = self.callPackage (import (semantic-role-labeler + "/lexicon-builder")) {};

    "multi-word-tagger"     = self.callPackage (import (semantic-role-labeler + "/multi-word-tagger")) {};
    "nlp-types"             = self.callPackage (import (semantic-role-labeler + "/nlp-types")) {};

    "OntoNotes"             = self.callPackage (import (semantic-role-labeler + "/OntoNotes")) {};
    "PropBank"              = self.callPackage (import (semantic-role-labeler + "/PropBank")) {};

    "semantic-role-labeler" = self.callPackage (import (semantic-role-labeler + "/semantic-role-labeler")) {};
    "semantic-types"        = self.callPackage (import (semantic-role-labeler + "/semantic-types")) {};
    "syntactic-analysis"    = self.callPackage (import (semantic-role-labeler + "/syntactic-analysis")) {};
    "time-tagger"           = self.callPackage (import (semantic-role-labeler + "/time-tagger")) {};

    "VerbNet"               = self.callPackage (import (semantic-role-labeler + "/VerbNet")) {};
    "wiki-ner"              = self.callPackage (import (semantic-role-labeler + "/wiki-ner")) {};

  };
  ukb = import (uphere-nix-overlay + "/nix/cpp-modules/ukb.nix") { inherit stdenv fetchgit fetchurl; boost = pkgs.boost; };

  hsconfig3 = import (HUKB+ "/HUKB-driver/config.nix") { inherit uphere-nix-overlay ukb; };
  hsconfig4 =
    self: super: {
      "HUKB-driver" = self.callPackage (import (HUKB + "/HUKB-driver")) {};
    };
in
  self: super: (hsconfig1 self super //
                hsconfig2 self super //
                hsconfig3 self super //
                hsconfig4 self super)
