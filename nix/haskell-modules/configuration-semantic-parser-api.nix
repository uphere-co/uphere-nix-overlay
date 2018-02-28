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
, nlp-pipeline
, nlp-shared-types
, nlp-types
, OntoNotes
, PropBank
, semantic-parser-api-compute
, semantic-parser-api-ghcjs
, semantic-role-labeler
, semantic-types
, syntactic-analysis
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
, haskellLib
}:

let

  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-ghc-8.0.x.nix") { inherit pkgs haskellLib; };
  haskellPackages1 = haskellPackages.override { overrides = hsconfig1; };
  fastTextNix = import (semantic-role-labeler + "/fasttext/default.nix") {
    inherit stdenv;
    haskellPackages = haskellPackages1;
  };
  hsconfig2 = self: super: {
    "event-analyzer"        = self.callPackage event-analyzer {};
    "fastText"              = self.callPackage fastTextNix { inherit fasttext; };
    "graph-algorithms"    = self.callPackage (import graph-algorithms)    {};
    "HCoreNLP"              = self.callPackage (import HCoreNLP) { inherit jdk corenlp corenlp_models; };
    "HCoreNLP-Proto"        = self.callPackage (import (HCoreNLP + "/HCoreNLP-Proto")) {};
    "HFrameNet"             = self.callPackage (import HFrameNet) {};
    "HWordNet"              = self.callPackage (import HWordNet) {};
    "lexicon"               = self.callPackage (import lexicon) {};
    "lexicon-builder"       = self.callPackage (import lexicon-builder) {};
    "multi-word-tagger"     = self.callPackage (import multi-word-tagger) {};
    "newsapi"               = self.callPackage (import (fetchfin + "/newsapi")) {};
    "nlp-pipeline"          = self.callPackage (import nlp-pipeline) {};
    "nlp-shared-types"      = self.callPackage (import nlp-shared-types) {};
    "nlp-types"             = self.callPackage (import nlp-types) {};
    "OntoNotes"             = self.callPackage (import OntoNotes) {};
    "PropBank"              = self.callPackage (import PropBank) {};
    "rss-scraper"           = self.callPackage (import (fetchfin + "/rss-scraper")) {};
    "semantic-parser-api-common" = self.callPackage (import (semantic-parser-api-ghcjs + "/semantic-parser-api-common")) {};
    "semantic-parser-api-compute" = self.callPackage (import semantic-parser-api-compute) {};
    "semantic-role-labeler" = self.callPackage (import semantic-role-labeler) {};
    "semantic-types"        = self.callPackage (import semantic-types) {};
    "syntactic-analysis"    = self.callPackage (import syntactic-analysis) {};
    "textview"              = self.callPackage (import textview) {};
    "time-tagger"              = self.callPackage (import time-tagger) {};
    "uphere-db"             = self.callPackage (import uphere-db) {};
    "uphere-network-util" = self.callPackage (import uphere-network-util) {};
    "uphere-opaleye"        = self.callPackage (import uphere-opaleye) {};
    "VerbNet"               = self.callPackage (import VerbNet) {};
    "wiki-ner"              = self.callPackage (import wiki-ner) {};
  };
  ukb = import (uphere-nix-overlay + "/nix/cpp-modules/ukb.nix") { inherit stdenv fetchgit fetchurl; boost = pkgs.boost; };

  hsconfig3 = import (HUKB+ "/HUKB-driver/config.nix") { inherit uphere-nix-overlay ukb haskellLib; };
  hsconfig4 =
    self: super: {
      "HUKB-driver" = self.callPackage (import (HUKB + "/HUKB-driver")) {};
    };
in
  self: super: (hsconfig1 self super // hsconfig2 self super // hsconfig3 self super // hsconfig4 self super)
