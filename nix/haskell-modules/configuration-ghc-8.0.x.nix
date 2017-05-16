{ pkgs ? (import <nixpkgs>{}) }:

with pkgs;

let
    llvmGeneralSrc = fetchgit {
      url = "git://github.com/wavewave/llvm-general.git";
      rev = "646bfa6168430b56035f9858c9676ac22fba4976";
      sha256 = "1g97vi8jmp7n783s0kbk5vhrh4kjqf619nhw3qxjjlpz08vhjr9m";
    };
    fficxxSrc = fetchgit {
      url = "git://github.com/wavewave/fficxx.git";
      rev = "1f757bacd1c1283ba8122546d2f3f813d149174f";
      sha256 = "00b45hzggs2xc2pk02wd4ya97cr2xaz7l11p7dwg2vls680l3bwm";
    };

in self: super: {
      "distributed-process-lifted" = pkgs.haskell.lib.dontCheck super.distributed-process-lifted;

      "lbfgs" = self.callPackage
        ({ mkDerivation, array, base, stdenv, vector }:
         mkDerivation {
           pname = "lbfgs";
           version = "0.1";
           libraryHaskellDepends = [ array base vector ];
           description = "L-BFGS optimization";
           license = "unknown";
         }) {};
      "hblas" = self.callPackage
        ({ mkDerivation, base, openblas, HUnit, liblapack, primitive
         , storable-complex, tasty, tasty-hunit, vector
         }:
         mkDerivation {
           pname = "hblas";
           version = "0.3.2.1";
           sha256 = "3e159cc8c98735861edad47cd4da11bd5862bb629601a9bc441960c921ae8215";
           revision = "1";
           editedCabalFile = "cf7946aba77f6f23a665fe06859a6ba306b513f5849f9828ed171e84bad4a43e";
           libraryHaskellDepends = [ base primitive storable-complex vector ];
           librarySystemDepends = [ openblas liblapack ];
           testHaskellDepends = [ base HUnit tasty tasty-hunit vector ];
           jailbreak = true;
           doCheck = false;
           configureFlags = ["-fOpenBLAS"];
           homepage = "http://github.com/wellposed/hblas/";
           description = "Human friendly BLAS and Lapack bindings for Haskell";
           license = stdenv.lib.licenses.bsd3;
           hydraPlatforms = stdenv.lib.platforms.none;
         }) { inherit (pkgs) liblapack;};

      llvm-general-pure =
        let p1 = haskell.lib.overrideCabal super.llvm-general-pure (drv: {
                   src = "${llvmGeneralSrc}/llvm-general-pure"; 
                 });
        in haskell.lib.addBuildDepend p1 self.transformers-compat; 

      llvm-general = haskell.lib.overrideCabal super.llvm-general (drv: {
        src = "${llvmGeneralSrc}/llvm-general";
        libraryToolDepends = [ llvm_38 ];
      });

      "bindings-hdf5" = self.callPackage
        ({ mkDerivation, base, bindings-DSL, bytestring, hdf5, libffi
         , monad-peel, primitive, stdenv, transformers, vector
         }:
	 mkDerivation {
           pname = "bindings-hdf5";
           version = "1.8.12";
	   #src = /home/wavewave/repo/srcc/bindings-hdf5;
           src = fetchgit {
             url = "git://github.com/wavewave/bindings-hdf5.git";
             rev = "881048b816789a89b6215ee566496425d37a739d";
             sha256 = "09y7hk91854k6iz3l9n4kwsvi3q8phl7ydnwkdhz8fl96xb79235";
	   };
           libraryHaskellDepends = [
             base bindings-DSL bytestring libffi monad-peel primitive
             transformers vector
           ];
           libraryPkgconfigDepends = [ hdf5 ];
           homepage = "https://github.com/mokus0/bindings-hdf5";
           description = "Bindings to HDF5";
           license = stdenv.lib.licenses.publicDomain;
         }) { hdf5 = pkgs.hdf5; };
	 
      "hdf5" = self.callPackage
        ({ mkDerivation, base, bindings-hdf5, bytestring, stdenv, tagged
         , vector
         }:
         mkDerivation {
           pname = "hdf5";
           version = "1.8.8";
           src = fetchgit {
             url = "git://github.com/wavewave/hs-hdf5.git";
             rev = "196e0d714a34e97358be9a907af0b93b4c7922e3";
             sha256 = "1gwrcdza3qsw3hq8jsvp7bgxr8fzkg0jjb15pmhnrn28jkhlhx03";
	   };
           libraryHaskellDepends = [
             base bindings-hdf5 bytestring tagged vector
           ];
           homepage = "https://github.com/mokus0/hs-hdf5";
           description = "Haskell interface to the HDF5 scientific data storage library";
           license = stdenv.lib.licenses.publicDomain;
         }) {};
      "network-transport-uphere" = self.callPackage
        ({ mkDerivation, base, binary, bytestring, containers, data-accessor, distributed-process
         , network, network-simple, network-transport, network-transport-tests, stm, either
	 , stdenv
	 }:
	 mkDerivation {
	   pname = "network-transport-uphere";
	   version = "0.0";
	   src = fetchgit {
             url = "git://github.com/uphere-co/network-transport-uphere.git";
             rev = "5f53fb37799ca00de2e575a6ba68781759c58eb4";
             sha256 = "1vgrp6x5480p9vgk1ci7qydv76r76742inm5mzvqgxsvnyv5hj77";
	   };
	   libraryHaskellDepends = [
	     base bytestring containers data-accessor network network-transport
	   ];
	   executableHaskellDepends = [
	     base binary distributed-process network-simple network-transport either stm
	   ];
	   homepage = "http://haskell-distributed.github.com";
	   description = "UpHere specific network transport";
	   license = stdenv.lib.licenses.bsd3;
	   doCheck = false;
	 }) {};
	 
      "fficxx-runtime" = self.callPackage (import (fficxxSrc + "/fficxx-runtime")) {};
      "fficxx" = self.callPackage (import (fficxxSrc + "/fficxx")) {};

      "product-profunctors" = self.callPackage
         ({ mkDerivation, base, contravariant, profunctors, stdenv, tagged
          , template-haskell
          }:
          mkDerivation {
            pname = "product-profunctors";
            version = "0.7.1.0";
            src = fetchgit {
              url = "git://github.com/tomjaguarpaw/product-profunctors.git";
              rev = "4029eafc74f494d5749b1bbd30bf6e87e9bb44ba";
              sha256 = "15vvm2105jwlg2kfjszl35jfavgndhv7a1cxmlpadd14mga2jzfi";
            };
            libraryHaskellDepends = [
              base contravariant profunctors tagged template-haskell
            ];
            testHaskellDepends = [ base profunctors ];
            homepage = "https://github.com/tomjaguarpaw/product-profunctors";
            description = "product-profunctors";
            license = stdenv.lib.licenses.bsd3;
          }) {};
          
      "opaleye" = self.callPackage
         ({ mkDerivation, aeson, attoparsec, base, base16-bytestring
          , bytestring, case-insensitive, containers, contravariant, multiset
          , postgresql-simple, pretty, product-profunctors, profunctors
          , QuickCheck, semigroups, stdenv, text, time, time-locale-compat
          , transformers, uuid, void
          }:
          mkDerivation {
            pname = "opaleye";
            version = "0.5.0.0";
            src = fetchgit {
              url = "git://github.com/tomjaguarpaw/haskell-opaleye.git";
              rev = "738ed9523884cb97af883222cbbe80184f8d5569";
              sha256 = "1g9y0nm2qsq5rdkifhxr89fjagnzxilf0x9lzmqpz79lcww91k0h";
            };
            libraryHaskellDepends = [
              aeson attoparsec base base16-bytestring bytestring case-insensitive
              contravariant postgresql-simple pretty product-profunctors
              profunctors semigroups text time time-locale-compat transformers
              uuid void
            ];
            testHaskellDepends = [
              base containers contravariant multiset postgresql-simple
              product-profunctors profunctors QuickCheck semigroups time
            ];
            homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
            description = "An SQL-generating DSL targeting PostgreSQL";
            license = stdenv.lib.licenses.bsd3;
            doCheck = false;
          }) {};

      "yayaml" = self.callPackage
        ({ mkDerivation, attoparsec, base, bytestring, filepath, scientific
         , stdenv, text, transformers
         }:
         mkDerivation {
           pname = "yayaml";
           version = "0.0.999";
           src = fetchgit {
             url = "https://github.com/uphere-co/yayaml.git";
             rev = "653a69fe44e6b862ebcb273a38588b757abc4503";
             sha256 = "0hd3k72ab1d2jc42x5a4g3sjkan180cdwc1ghlzy93kbabam8vbg";
           };
           libraryHaskellDepends = [
             attoparsec base bytestring filepath scientific text transformers
           ];
           description = "Yet Another YAML library";
           license = stdenv.lib.licenses.bsd3;
         }) {};

    }
