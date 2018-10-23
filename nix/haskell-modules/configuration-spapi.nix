{ pkgs
, uphere-nix-overlay
, error-handler
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
                inherit pkgs uphere-nix-overlay;
                inherit event-analyzer;
                inherit fetchfin HCoreNLP HUKB network-transport-uphere;
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
  # TODO: auto-generate this
  hsconfig3 = self: super: {
    "cloud-haskell-util"   = self.callCabal2nix "cloud-haskell-util" (compute-pipeline + "/cloud-haskell-util") {};
    "compute-worker"       = self.callCabal2nix "compute-worker" (compute-pipeline + "/compute-worker") {};
    "jobqueue-client"      = self.callCabal2nix "jobqueue-client" (compute-pipeline + "/jobqueue-client") {};
    "jobqueue-server"      = self.callCabal2nix "jobqueue-server" (compute-pipeline + "/jobqueue-server") {};
    "jobqueue-types"       = self.callCabal2nix "jobqueue-types" (compute-pipeline + "/jobqueue-types") {};
    "storage-manager"      = self.callCabal2nix "storage-manager" (compute-pipeline + "/storage-manager") {};
    "task-corenlp"         = self.callCabal2nix "task-corenlp" (compute-pipeline + "/task-corenlp") {};
    "task-reuters"         = self.callCabal2nix "task-reuters" (compute-pipeline + "/task-reuters") {};
    "task-semantic-parser" = self.callCabal2nix "task-semantic-parser" (compute-pipeline + "/task-semantic-parser") {};
    "uphere-db"            = self.callCabal2nix "uphere-db" (compute-pipeline + "/uphere-db") {};
  };
  hsconfig4 = self: super: {
    "error-handler" = self.callCabal2nix "error-handler" error-handler {};
  };
in
  self: super: (hsconfig1 self super // hsconfig2 self super // hsconfig3 self super // hsconfig4 self super)
