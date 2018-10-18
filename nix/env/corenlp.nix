# This nix module provides an runtime environment for CoreNLP as setup hook.

{ makeSetupHook, writeText, haskellPackages, corenlp, corenlp_models }:

# TODO: change hard-coded ghc version number.
makeSetupHook { }
  (writeText "setup-hook.sh" ''
     export CLASSPATH="${corenlp_models}:${corenlp}/stanford-corenlp-3.7.0.jar:${corenlp}/protobuf.jar:${corenlp}/joda-time.jar:${corenlp}/jollyday.jar:${haskellPackages.HCoreNLP}/share/x86_64-linux-ghc-8.4.3/HCoreNLP-0.1.0.0/HCoreNLPProto.jar"
  '')
