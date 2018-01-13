{ pkgs                  ? import <nixpkgs> {}
, uphere-nix-overlay    ? <uphere-nix-overlay>
, graph-algorithms      ? <graph-algorithms>
, HCoreNLP              ? <HCoreNLP>
, HFrameNet             ? <HFrameNet>
, HUKB                  ? <HUKB>
, HWordNet              ? <HWordNet>
, lexicon               ? <lexicon>
, lexicon-builder       ? <lexicon-builder>
, multi-word-tagger     ? <multi-word-tagger>
, nlp-shared-types      ? <nlp-shared-types>
, nlp-types             ? <nlp-types>
, OntoNotes             ? <OntoNotes>
, PropBank              ? <PropBank>
, semantic-parser-api-ghcjs ? <semantic-parser-api-ghcjs>
, semantic-role-labeler ? <semantic-role-labeler>
, semantic-types        ? <semantic-types>
, syntactic-analysis    ? <syntactic-analysis>
, textview              ? <textview>
, uphere-network-util   ? <uphere-network-util>
, VerbNet               ? <VerbNet>
, wiki-ner              ? <wiki-ner>
, corenlp
, corenlp_models
#
, boost
, fetchgit
, fetchurl
, haskellPackages
, stdenv
, jdk
, fasttext
}:

let

  hsconfig1 = import (uphere-nix-overlay + "/nix/haskell-modules/configuration-ghc-8.0.x.nix") { inherit pkgs; };
  haskellPackages1 = haskellPackages.override { overrides = hsconfig1; };
  fastTextNix = import (semantic-role-labeler + "/fasttext/default.nix") {
    inherit stdenv;
    haskellPackages = haskellPackages1;
  };
  hsconfig2 = self: super: {
    "fastText"              = self.callPackage fastTextNix { inherit fasttext; };
    "graph-algorithms"    = self.callPackage (import graph-algorithms)    {};
    "HCoreNLP"              = self.callPackage (import HCoreNLP) { inherit jdk corenlp corenlp_models; };
    "HCoreNLP-Proto"        = self.callPackage (import <HCoreNLP/HCoreNLP-Proto>) {};
    "HFrameNet"             = self.callPackage (import HFrameNet) {};
    "HWordNet"              = self.callPackage (import HWordNet) {};
    "lexicon"               = self.callPackage (import lexicon) {};
    "lexicon-builder"       = self.callPackage (import lexicon-builder) {};
    "multi-word-tagger"     = self.callPackage (import multi-word-tagger) {};
    "nlp-shared-types"      = self.callPackage (import nlp-shared-types) {};
    "nlp-types"             = self.callPackage (import nlp-types) {};
    "OntoNotes"             = self.callPackage (import OntoNotes) {};
    "PropBank"              = self.callPackage (import PropBank) {};
    "semantic-parser-api-common" = self.callPackage (import <semantic-parser-api-ghcjs/semantic-parser-api-common>) {};
    "semantic-role-labeler" = self.callPackage (import semantic-role-labeler) {};
    "semantic-types"        = self.callPackage (import semantic-types) {};
    "syntactic-analysis"    = self.callPackage (import syntactic-analysis) {};
    "textview"              = self.callPackage (import textview) {};
    "uphere-network-util" = self.callPackage (import uphere-network-util) {};
    "VerbNet"               = self.callPackage (import VerbNet) {};
    "wiki-ner"              = self.callPackage (import wiki-ner) {};
  };
  ukb = import <uphere-nix-overlay/nix/cpp-modules/ukb.nix> { inherit stdenv fetchgit fetchurl boost; };

  hsconfig3 = import <HUKB/HUKB-driver/config.nix> { inherit uphere-nix-overlay ukb; };
  hsconfig4 =
    self: super: {
      "HUKB-driver" = self.callPackage (import <HUKB/HUKB-driver>) {};
    };
in
  self: super: (hsconfig1 self super // hsconfig2 self super // hsconfig3 self super // hsconfig4 self super)
