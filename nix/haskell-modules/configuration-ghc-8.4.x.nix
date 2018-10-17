{ pkgs, fficxxSrc }:

with pkgs;

let
    boxes-src = fetchgit {
      url = "git://github.com/wavewave/boxes.git";
      rev = "6850892346a506fc608af3ee852d3f07ffc21847";
      sha256 = "0yh5an716g4b68qfnq73nq3gcaarjn60cbf55xa6f82zlj8rl854";
    };

in self: super: {
     "boxes" = self.callCabal2nix "boxes" boxes-src {};

     "html-entities" = haskell.lib.overrideCabal super.html-entities (drv: {
       src = fetchgit {
         url = "git://github.com/nikita-volkov/html-entities.git";
         rev = "534617780c6ebd559475f336dba64a602d54fc9f";
         sha256 = "1cfavvwrk6w4s392csabk7k5qk5pmafrd5vkjszhb02arlzpzr04";
       };
     });

     "distributed-process-lifted" =
       haskell.lib.dontCheck super.distributed-process-lifted;


      "fficxx" = self.callCabal2nix "fficxx" (fficxxSrc + "/fficxx") {};

      "fficxx-runtime" = self.callCabal2nix "fficxx-runtime" (fficxxSrc + "/fficxx-runtime") {};

      "yayaml" = self.callPackage
        ({ mkDerivation, attoparsec, base, bytestring, filepath, scientific
         , stdenv, text, transformers
         }:
         mkDerivation {
           pname = "yayaml";
           version = "0.0.999";
           src = fetchgit {
             url = "https://github.com/wavewave/yayaml.git";
             rev = "68ef0ef68e5d1e4e896a0884f9b9df316cff35ec";
             sha256 = "1zhpm47ivk4nn2l39z50smvg1mws5rma9bq2qbfs62dszs1y7mvj";
           };
           libraryHaskellDepends = [
             attoparsec base bytestring filepath scientific text transformers
           ];
           description = "Yet Another YAML library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
    }
