{ pkgs }:

with pkgs;

let
    inline-java-src = fetchgit {
      url = "git://github.com/wavewave/inline-java.git";
      rev = "dc8bd3a2ee8ecc53f5dbd8462db78a03345f2cfe";
      sha256 = "04c8qhbp7b7lcs1cq1i4v94bwplvznq9nv4qsyky68ww33686sl1";
    };
    llvmGeneralSrc = fetchgit {
      url = "git://github.com/wavewave/llvm-general.git";
      rev = "646bfa6168430b56035f9858c9676ac22fba4976";
      sha256 = "1g97vi8jmp7n783s0kbk5vhrh4kjqf619nhw3qxjjlpz08vhjr9m";
    };
    fficxxSrc = fetchgit {
      url = "git://github.com/wavewave/fficxx.git";
      rev = "eeb2d236dda5ae422ce80d4b6bcd851fd9e70499";
      sha256 = "0d0wckmy5vs3vq6gh1sawxzmq169nz9kpg4wq5ap9fz5k18h54wm";
    };
    protocol-buffers-src = fetchgit {
      url = "git://github.com/k-bx/protocol-buffers.git";
      rev = "52a4a0644c313627a3091cfa3afe6552bb3c7e74";
      sha256 = "1i97gs2kdifxjfq2a47fq88qjps66i2cnvimjfxsfgq1713ily2f";
    };

in self: super: {
      "distributed-process-lifted" = pkgs.haskell.lib.dontCheck super.distributed-process-lifted;
      "distributed-process" = pkgs.haskell.lib.overrideCabal super.distributed-process (drv: {
        version = "0.6.6";
        sha256 = "1l5png3jwsqa5m63szz4x669nz6qmjiwhhh26z9wql7amdfpg0g8";
      });

      "distributed-process-simplelocalnet" = pkgs.haskell.lib.overrideCabal super.distributed-process-simplelocalnet (drv: {
        version = "0.2.3.3";
        sha256 = "7b98498f2d6ce185ae0a855ff35e97a9ad1bd1ec7872b2d75aa0bb1f1fb24316";
        revision = "1";
        editedCabalFile = "4ccf03a12611141e322511b6370e2f757e215f17e68fc3f68485ec5b48fa8f70";
      });
      
      "syb" = pkgs.haskell.lib.overrideCabal super.syb (drv: {
        version = "0.6";
        sha256 = "1p3cnqjm13677r4a966zffzhi9b3a321aln8zs8ckqj0d9z1z3d3";
      });

      "network-multicast" = pkgs.haskell.lib.overrideCabal super.network-multicast (drv: {
         version = "0.2.0";
         sha256 = "0f3b50abc3a401c20cc6a0ec51a49d2a48e5b467d9fbd63b7cf803165fe975f2";
       });

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

      "opaleye_0_5_0_0" = self.callPackage
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

      "inline-java" = self.callPackage
        ({ mkDerivation, base, binary, bytestring, Cabal, containers
         , directory, distributed-closure, filepath, ghc-heap-view, hspec
         , inline-c, jni, jvm, language-java, process, singletons, stdenv
         , syb, template-haskell, temporary, text, thread-local-storage
         , vector
         , jdk
         }:
         mkDerivation {
           pname = "inline-java";
           version = "0.6.2";
           src = "${inline-java-src}";
           libraryHaskellDepends = [
             base binary bytestring Cabal containers directory
             distributed-closure filepath ghc-heap-view inline-c jni jvm
             language-java process singletons syb template-haskell temporary
             text thread-local-storage vector
           ];
           testHaskellDepends = [
             base bytestring hspec jni jvm singletons text
           ];
           buildDepends = [ jdk ];
           homepage = "http://github.com/tweag/inline-java#readme";
           description = "Java interop via inline Java code in Haskell modules";
           license = stdenv.lib.licenses.bsd3;
         }) { jdk = pkgs.jdk; };

      "jvm" = self.callPackage
        ({ mkDerivation, base, bytestring, distributed-closure, hspec, jni
         , singletons, stdenv, text, vector
         , jdk
         }:
         mkDerivation {
           pname = "jvm";
           version = "0.2.2";
           src = "${inline-java-src}/jvm";
           libraryHaskellDepends = [
             base bytestring distributed-closure jni singletons text vector
           ];
           testHaskellDepends = [ base bytestring hspec text ];
           buildDepends = [ jdk ];
           #doCheck = false;
           homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
           description = "Call JVM methods from Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) { jdk = pkgs.jdk; };

      "jni" = self.callPackage
        ({ mkDerivation, base, bytestring, choice, constraints, containers
         , inline-c, singletons, thread-local-storage
         , cpphs, jdk
         }:
         mkDerivation {
           pname = "jni";
           src = "${inline-java-src}/jni";
           version = "0.3.1";
           libraryHaskellDepends = [
             base bytestring choice constraints containers inline-c
             singletons thread-local-storage
           ];
           setupHaskellDepends = [ cpphs ];
           configureFlags = ["--extra-lib-dirs=${jdk.jre}/lib/openjdk/jre/lib/amd64/server"];
           librarySystemDepends = [ jdk ];
           homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
           description = "Complete JNI raw bindings";
           license = stdenv.lib.licenses.bsd3;
           hydraPlatforms = stdenv.lib.platforms.none;
         }) {jdk = pkgs.jdk;};

      "bindings-svm" = pkgs.haskell.lib.overrideCabal super.bindings-svm (drv: {
        patches = [./bindings-svm-openmp.patch];
        librarySystemDepends = [ pkgs.libsvm ];
      });


      "svm-simple" = self.callPackage
        ({ mkDerivation, base, binary, bindings-svm, bytestring, containers
         , deepseq, directory, monad-par, mwc-random, stdenv, vector
         }:
         mkDerivation {
           pname = "svm-simple";
           version = "0.2.7";
           src = fetchgit {
             url = "git://github.com/wavewave/Simple-SVM.git";
             rev = "375552fb4c7100309e1f5b14c40f80a9d8e77121";
             sha256 = "1gqa0r5v06dg84sb8rwf7ml2bl7la76clgr1x9iwf1smxgzr5na0";
           };

           libraryHaskellDepends = [
             base binary bindings-svm bytestring containers deepseq directory
             monad-par mwc-random vector
           ];
           doHaddock = false;
           homepage = "http://github.com/aleator/Simple-SVM";
           description = "Medium level, simplified, bindings to libsvm";
           license = stdenv.lib.licenses.bsd3;
         }) {};

      "protocol-buffers" = self.callPackage
        ({ mkDerivation, array, base, binary, bytestring, containers
         , directory, filepath, mtl, parsec, stdenv, syb, utf8-string
         }:
         mkDerivation {
           pname = "protocol-buffers";
           version = "2.4.3";
           src = "${protocol-buffers-src}";
           libraryHaskellDepends = [
             array base binary bytestring containers directory filepath mtl
             parsec syb utf8-string
           ];
           homepage = "https://github.com/k-bx/protocol-buffers";
           description = "Parse Google Protocol Buffer specifications";
           license = stdenv.lib.licenses.bsd3;
         }) {};

      "protocol-buffers-descriptor" = self.callPackage
        ({ mkDerivation, base, bytestring, containers, protocol-buffers
         , stdenv
         }:
         mkDerivation {
           pname = "protocol-buffers-descriptor";
           version = "2.4.3";
           src = "${protocol-buffers-src}/descriptor";
           libraryHaskellDepends = [
             base bytestring containers protocol-buffers
           ];
           homepage = "https://github.com/k-bx/protocol-buffers";
           description = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
           license = stdenv.lib.licenses.bsd3;
         }) {};


      "hprotoc" = self.callPackage
        ({ mkDerivation, alex, array, base, binary, bytestring, containers
         , directory, filepath, haskell-src-exts, mtl, parsec
         , protocol-buffers, protocol-buffers-descriptor, stdenv
         , utf8-string
         }:
         mkDerivation {
           pname = "hprotoc";
           version = "2.4.3";
           src = "${protocol-buffers-src}/hprotoc";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             array base binary bytestring containers directory filepath
             haskell-src-exts mtl parsec protocol-buffers
             protocol-buffers-descriptor utf8-string
           ];
           libraryToolDepends = [ alex ];
           executableHaskellDepends = [
             array base binary bytestring containers directory filepath
             haskell-src-exts mtl parsec protocol-buffers
             protocol-buffers-descriptor utf8-string
           ];
           executableToolDepends = [ alex ];
           homepage = "https://github.com/k-bx/protocol-buffers";
           description = "Parse Google Protocol Buffer specifications";
           license = stdenv.lib.licenses.bsd3;
           jailbreak = true;
         }) { haskell-src-exts=self.haskell-src-exts_1_17_1; };

      "haskell-src-exts_1_17_1" = self.callPackage
        ({ mkDerivation, array, base, containers, cpphs, directory
         , filepath, ghc-prim, happy, mtl, pretty, pretty-show, smallcheck
         , tasty, tasty-golden, tasty-smallcheck
         }:
         mkDerivation {
           pname = "haskell-src-exts";
           version = "1.17.1";

           libraryHaskellDepends = [ array base cpphs ghc-prim pretty ];
           libraryToolDepends = [ happy ];
           testHaskellDepends = [
             base containers directory filepath mtl pretty-show smallcheck tasty
             tasty-golden tasty-smallcheck
           ];
           doCheck = false;
           homepage = "https://github.com/haskell-suite/haskell-src-exts";
           description = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
           license = stdenv.lib.licenses.bsd3;
         }) {};

      "blaze-markup" = self.callPackage
        ({ mkDerivation, base, blaze-builder, bytestring, containers, HUnit
         , QuickCheck, test-framework, test-framework-hunit
         , test-framework-quickcheck2, text
         }:
         mkDerivation {
           pname = "blaze-markup";
           version = "0.7.1.1";
           sha256 = "00s3qlkbq9gxgy6l5skbhnl5h81mjgzqcrw3yn3wqnyd9scab3b3";
           libraryHaskellDepends = [ base blaze-builder bytestring text ];
           testHaskellDepends = [
             base blaze-builder bytestring containers HUnit QuickCheck
             test-framework test-framework-hunit test-framework-quickcheck2 text
           ];
           homepage = "http://jaspervdj.be/blaze";
           description = "A blazingly fast markup combinator library for Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};


      "blaze-html" = self.callPackage
        ({ mkDerivation, base, blaze-builder, blaze-markup, bytestring
         , containers, HUnit, QuickCheck, test-framework
         , test-framework-hunit, test-framework-quickcheck2, text
         }:
         mkDerivation {
           pname = "blaze-html";
           version = "0.8.1.3";
           sha256 = "0dyn6cj5av4apmc3wav6asfap53gxy4hzdb7rph83yakscbyf5lc";
           libraryHaskellDepends = [
             base blaze-builder blaze-markup bytestring text
           ];
           testHaskellDepends = [
             base blaze-builder blaze-markup bytestring containers HUnit
             QuickCheck test-framework test-framework-hunit
             test-framework-quickcheck2 text
           ];
           homepage = "http://jaspervdj.be/blaze";
           description = "A blazingly fast HTML combinator library for Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};

    }
