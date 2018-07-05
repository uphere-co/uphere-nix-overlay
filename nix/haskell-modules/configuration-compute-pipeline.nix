{ pkgs
, uphere-nix-overlay
, event-analyzer
, fetchfin
, HCoreNLP
, HUKB
, network-transport-uphere
, language-engine
, nlp-shared-types
, compute-pipeline
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
  #
  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-language-engine.nix") {
                inherit pkgs uphere-nix-overlay event-analyzer fetchfin HCoreNLP HUKB network-transport-uphere;
                inherit language-engine nlp-shared-types textview uphere-db;
                inherit uphere-network-util uphere-opaleye corenlp corenlp_models;
                inherit fetchgit fetchurl haskellPackages stdenv jdk fasttext hs-ogdf;
              };
  hsconfig2 = self: super: {
    # language-engine
    "graph-algorithms"      = self.callCabal2nix "graph-algorithms" (language-engine + "/graph-algorithms") {};
    "HFrameNet"             = self.callCabal2nix "HFrameNet" (language-engine + "/HFrameNet") {};
    "lexicon"               = self.callCabal2nix "lexicon" (language-engine + "/lexicon") {};
    "lexicon-builder"       = self.callCabal2nix "lexicon-builder" (language-engine + "/lexicon-builder") {};

    "multi-word-tagger"     = self.callCabal2nix "multi-word-tagger" (language-engine + "/multi-word-tagger") {};

    "OntoNotes"             = self.callCabal2nix "OntoNotes" (language-engine + "/OntoNotes") {};
    "PropBank"              = self.callCabal2nix "PropBank" (language-engine + "/PropBank") {};
    "semantic-role-labeler" = self.callCabal2nix "semantic-role-labeler" (language-engine + "/semantic-role-labeler") {};
    "semantic-types"        = self.callCabal2nix "semantic-types" (language-engine + "/semantic-types") {};
    "syntactic-analysis"    = self.callCabal2nix "syntactic-analysis" (language-engine + "/syntactic-analysis") {};
    "time-tagger"           = self.callCabal2nix "time-tagger" (language-engine + "/time-tagger") {};
    "VerbNet"               = self.callCabal2nix "VerbNet" (language-engine + "/VerbNet") {};
    "wiki-ner"              = self.callCabal2nix "wiki-ner" (language-engine + "/wiki-ner") {};
  };
in
  self: super: (hsconfig1 self super // hsconfig2 self super)
