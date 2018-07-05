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
                inherit language-engine nlp-shared-types textview;
                inherit uphere-network-util uphere-opaleye corenlp corenlp_models;
                inherit fetchgit fetchurl haskellPackages stdenv jdk fasttext hs-ogdf;
              };
  hsconfig2 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-compute-pipeline.nix") {
                inherit pkgs uphere-nix-overlay event-analyzer fetchfin HCoreNLP HUKB;
                inherit network-transport-uphere language-engine nlp-shared-types compute-pipeline;
                inherit textview uphere-network-util uphere-opaleye corenlp corenlp_models;
                inherit fetchgit fetchurl haskellPackages stdenv jdk fasttext hs-ogdf;
              };
  hsconfig3 = self: super: {
    "compute-worker" = self.callCabal2nix "compute-worker" (compute-pipeline + "/compute-worker") {};
    "nlp-pipeline"   = self.callCabal2nix "nlp-pipeline" (compute-pipeline + "/nlp-pipeline") {};
    "uphere-db"      = self.callCabal2nix "uphere-db" (compute-pipeline + "/uphere-db") {};
  };
in
  self: super: (hsconfig1 self super // hsconfig2 self super // hsconfig3 self super)
