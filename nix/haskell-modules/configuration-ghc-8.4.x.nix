{ pkgs, fficxxSrc }:

with pkgs;

let


    #inline-java-src = fetchgit {
    #                    url = "git://github.com/wavewave/inline-java.git";
    #                    rev = "dc8bd3a2ee8ecc53f5dbd8462db78a03345f2cfe";
    #                    sha256 = "04c8qhbp7b7lcs1cq1i4v94bwplvznq9nv4qsyky68ww33686sl1";
    #                 };

    #llvmGeneralSrc = fetchgit {
    #  url = "git://github.com/wavewave/llvm-general.git";
    #  rev = "646bfa6168430b56035f9858c9676ac22fba4976";
    #  sha256 = "1g97vi8jmp7n783s0kbk5vhrh4kjqf619nhw3qxjjlpz08vhjr9m";
    #};


    #protocol-buffers-src = fetchgit {
    #  url = "git://github.com/k-bx/protocol-buffers.git";
    #  rev = "52a4a0644c313627a3091cfa3afe6552bb3c7e74";
    #  sha256 = "1i97gs2kdifxjfq2a47fq88qjps66i2cnvimjfxsfgq1713ily2f";
    #};

    #beam-src = fetchgit {
    #  url = "git://github.com/tathougies/beam.git";
    #  rev = "ba7c05a743d1924588a436d34c741a949adb2cdd";
    #  sha256 = "0dhdxnb3k9z6mcsaqk78fpj3p6s8ndjmr6s8i00bwbv6g2s8dxs5";
    #};

    # boxes-src = fetchgit {
    #   url = "git://github.com/wavewave/boxes.git";
    #  rev = "6850892346a506fc608af3ee852d3f07ffc21847";
    #  sha256 = "0yh5an716g4b68qfnq73nq3gcaarjn60cbf55xa6f82zlj8rl854";
    #};
    
in self: super: {
      #"boxes" = self.callCabal2nix "boxes" boxes-src {};
      
      "html-entities" = haskell.lib.overrideCabal super.html-entities (drv: {
        src = fetchgit {
          url = "git://github.com/nikita-volkov/html-entities.git";
          rev = "534617780c6ebd559475f336dba64a602d54fc9f";
          sha256 = "1cfavvwrk6w4s392csabk7k5qk5pmafrd5vkjszhb02arlzpzr04";
        };
      });


      #"network-multicast" = haskell.lib.overrideCabal super.network-multicast (drv: {
      #   version = "0.2.0";
      #   sha256 = "0f3b50abc3a401c20cc6a0ec51a49d2a48e5b467d9fbd63b7cf803165fe975f2";
      # });

      #"lbfgs" = self.callPackage
      #  ({ mkDerivation, array, base, stdenv, vector }:
      #   mkDerivation {
      #     pname = "lbfgs";
      #     version = "0.1";
      #     libraryHaskellDepends = [ array base vector ];
      #     description = "L-BFGS optimization";
      #     license = "unknown";
      #   }) {};
      #"hblas" = self.callPackage
      #  ({ mkDerivation, base, openblas, HUnit, liblapack, primitive
      #   , storable-complex, tasty, tasty-hunit, vector
      #   }:
      #   mkDerivation {
     #       pname = "hblas";
     #       version = "0.3.2.1";
     #       sha256 = "3e159cc8c98735861edad47cd4da11bd5862bb629601a9bc441960c921ae8215";
     #       revision = "1";
     #       editedCabalFile = "cf7946aba77f6f23a665fe06859a6ba306b513f5849f9828ed171e84bad4a43e";
     #       libraryHaskellDepends = [ base primitive storable-complex vector ];
     #       librarySystemDepends = [ openblas liblapack ];
     #       testHaskellDepends = [ base HUnit tasty tasty-hunit vector ];
     #       jailbreak = true;
     #       doCheck = false;
     #       configureFlags = ["-fOpenBLAS"];
     #       homepage = "http://github.com/wellposed/hblas/";
     #       description = "Human friendly BLAS and Lapack bindings for Haskell";
     #       license = stdenv.lib.licenses.bsd3;
     #       hydraPlatforms = stdenv.lib.platforms.none;
     #     }) { inherit (pkgs) liblapack;};

     #  llvm-general-pure =
     #    let p1 = haskell.lib.overrideCabal super.llvm-general-pure (drv: {
     #               src = "${llvmGeneralSrc}/llvm-general-pure";
     #             });
     #    in haskell.lib.addBuildDepend p1 self.transformers-compat;

     #  llvm-general = haskell.lib.overrideCabal super.llvm-general (drv: {
     #    src = "${llvmGeneralSrc}/llvm-general";
     #    libraryToolDepends = [ llvm_38 ];
     #  });

     #  "bindings-hdf5" = self.callPackage
     #    ({ mkDerivation, base, bindings-DSL, bytestring, hdf5, libffi
     #     , monad-peel, primitive, stdenv, transformers, vector
     #     }:
     # mkDerivation {
     #       pname = "bindings-hdf5";
     #       version = "1.8.12";
     #       src = fetchgit {
     #         url = "git://github.com/wavewave/bindings-hdf5.git";
     #         rev = "881048b816789a89b6215ee566496425d37a739d";
     #         sha256 = "09y7hk91854k6iz3l9n4kwsvi3q8phl7ydnwkdhz8fl96xb79235";
     #   };
     #       libraryHaskellDepends = [
     #         base bindings-DSL bytestring libffi monad-peel primitive
     #         transformers vector
     #       ];
     #       libraryPkgconfigDepends = [ hdf5 ];
     #       homepage = "https://github.com/mokus0/bindings-hdf5";
     #       description = "Bindings to HDF5";
     #       license = stdenv.lib.licenses.publicDomain;
     #     }) { hdf5 = pkgs.hdf5; };

     #  "hdf5" = self.callPackage
     #    ({ mkDerivation, base, bindings-hdf5, bytestring, stdenv, tagged
     #     , vector
     #     }:
     #     mkDerivation {
     #       pname = "hdf5";
     #       version = "1.8.8";
     #       src = fetchgit {
     #         url = "git://github.com/wavewave/hs-hdf5.git";
     #         rev = "196e0d714a34e97358be9a907af0b93b4c7922e3";
     #         sha256 = "1gwrcdza3qsw3hq8jsvp7bgxr8fzkg0jjb15pmhnrn28jkhlhx03";
     #   };
     #       libraryHaskellDepends = [
     #         base bindings-hdf5 bytestring tagged vector
     #       ];
     #       homepage = "https://github.com/mokus0/hs-hdf5";
     #       description = "Haskell interface to the HDF5 scientific data storage library";
     #       license = stdenv.lib.licenses.publicDomain;
     #     }) {};

      "fficxx" = self.callCabal2nix "fficxx" (fficxxSrc + "/fficxx") {};

      "fficxx-runtime" = self.callCabal2nix "fficxx-runtime" (fficxxSrc + "/fficxx-runtime") {};

      # "product-profunctors" = self.callPackage
      #    ({ mkDerivation, base, contravariant, profunctors, stdenv, tagged
      #     , template-haskell
      #     }:
      #     mkDerivation {
      #       pname = "product-profunctors";
      #       version = "0.7.1.0";
      #       src = fetchgit {
      #         url = "git://github.com/tomjaguarpaw/product-profunctors.git";
      #         rev = "4029eafc74f494d5749b1bbd30bf6e87e9bb44ba";
      #         sha256 = "15vvm2105jwlg2kfjszl35jfavgndhv7a1cxmlpadd14mga2jzfi";
      #       };
      #       libraryHaskellDepends = [
      #         base contravariant profunctors tagged template-haskell
      #       ];
      #       testHaskellDepends = [ base profunctors ];
      #       homepage = "https://github.com/tomjaguarpaw/product-profunctors";
      #       description = "product-profunctors";
      #       license = stdenv.lib.licenses.bsd3;
      #     }) {};


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

      #"bindings-svm" = haskell.lib.overrideCabal super.bindings-svm (drv: {
      #  patches = [./bindings-svm-openmp.patch];
      #  librarySystemDepends = [ pkgs.libsvm ];
      #});


      # "svm-simple" = self.callPackage
      #   ({ mkDerivation, base, binary, bindings-svm, bytestring, containers
      #    , deepseq, directory, monad-par, mwc-random, stdenv, vector
      #    }:
      #    mkDerivation {
      #      pname = "svm-simple";
      #      version = "0.2.7";
      #      src = fetchgit {
      #        url = "git://github.com/wavewave/Simple-SVM.git";
      #        rev = "375552fb4c7100309e1f5b14c40f80a9d8e77121";
      #        sha256 = "1gqa0r5v06dg84sb8rwf7ml2bl7la76clgr1x9iwf1smxgzr5na0";
      #      };

      #      libraryHaskellDepends = [
      #        base binary bindings-svm bytestring containers deepseq directory
      #        monad-par mwc-random vector
      #      ];
      #      doHaddock = false;
      #      homepage = "http://github.com/aleator/Simple-SVM";
      #      description = "Medium level, simplified, bindings to libsvm";
      #      license = stdenv.lib.licenses.bsd3;
      #    }) {};

      # "protocol-buffers" = self.callPackage
      #   ({ mkDerivation, array, base, binary, bytestring, containers
      #    , directory, filepath, mtl, parsec, stdenv, syb, utf8-string
      #    }:
      #    mkDerivation {
      #      pname = "protocol-buffers";
      #      version = "2.4.3";
      #      src = "${protocol-buffers-src}";
      #      libraryHaskellDepends = [
      #        array base binary bytestring containers directory filepath mtl
      #        parsec syb utf8-string
      #      ];
      #      homepage = "https://github.com/k-bx/protocol-buffers";
      #      description = "Parse Google Protocol Buffer specifications";
      #      license = stdenv.lib.licenses.bsd3;
      #    }) {};

      # "protocol-buffers-descriptor" = self.callPackage
      #   ({ mkDerivation, base, bytestring, containers, protocol-buffers
      #    , stdenv
      #    }:
      #    mkDerivation {
      #      pname = "protocol-buffers-descriptor";
      #      version = "2.4.3";
      #      src = "${protocol-buffers-src}/descriptor";
      #      libraryHaskellDepends = [
      #        base bytestring containers protocol-buffers
      #      ];
      #      homepage = "https://github.com/k-bx/protocol-buffers";
      #      description = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
      #      license = stdenv.lib.licenses.bsd3;
      #    }) {};


      # "hprotoc" = self.callPackage
      #   ({ mkDerivation, alex, array, base, binary, bytestring, containers
      #    , directory, filepath, haskell-src-exts, mtl, parsec
      #    , protocol-buffers, protocol-buffers-descriptor, stdenv
      #    , utf8-string
      #    }:
      #    mkDerivation {
      #      pname = "hprotoc";
      #      version = "2.4.3";
      #      src = "${protocol-buffers-src}/hprotoc";
      #      isLibrary = true;
      #      isExecutable = true;
      #      libraryHaskellDepends = [
      #        array base binary bytestring containers directory filepath
      #        haskell-src-exts mtl parsec protocol-buffers
      #        protocol-buffers-descriptor utf8-string
      #      ];
      #      libraryToolDepends = [ alex ];
      #      executableHaskellDepends = [
      #        array base binary bytestring containers directory filepath
      #        haskell-src-exts mtl parsec protocol-buffers
      #        protocol-buffers-descriptor utf8-string
      #      ];
      #      executableToolDepends = [ alex ];
      #      homepage = "https://github.com/k-bx/protocol-buffers";
      #      description = "Parse Google Protocol Buffer specifications";
      #      license = stdenv.lib.licenses.bsd3;
      #      jailbreak = true;
      #    }) { haskell-src-exts=self.haskell-src-exts_1_17_1; };

      # "haskell-src-exts_1_17_1" = self.callPackage
      #   ({ mkDerivation, array, base, containers, cpphs, directory
      #    , filepath, ghc-prim, happy, mtl, pretty, pretty-show, smallcheck
      #    , tasty, tasty-golden, tasty-smallcheck
      #    }:
      #    mkDerivation {
      #      pname = "haskell-src-exts";
      #      version = "1.17.1";

      #      libraryHaskellDepends = [ array base cpphs ghc-prim pretty ];
      #      libraryToolDepends = [ happy ];
      #      testHaskellDepends = [
      #        base containers directory filepath mtl pretty-show smallcheck tasty
      #        tasty-golden tasty-smallcheck
      #      ];
      #      doCheck = false;
      #      homepage = "https://github.com/haskell-suite/haskell-src-exts";
      #      description = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
      #      license = stdenv.lib.licenses.bsd3;
      #    }) {};


      # "beam-core" = self.callPackage
      #   ({ mkDerivation, aeson, base, bytestring, containers, dlist, free
      #    , ghc-prim, hashable, microlens, mtl, network-uri, stdenv, tasty
      #    , tasty-hunit, text, time, vector-sized
      #    }:
      #    mkDerivation {
      #      pname = "beam-core";
      #      version = "0.7.2.0";
      #      src = "${beam-src}/beam-core";
      #      libraryHaskellDepends = [
      #        aeson base bytestring containers dlist free ghc-prim hashable
      #        microlens mtl network-uri text time vector-sized
      #      ];
      #      testHaskellDepends = [
      #        base bytestring tasty tasty-hunit text time
      #      ];
      #      homepage = "http://travis.athougies.net/projects/beam.html";
      #      description = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
      #      license = stdenv.lib.licenses.mit;
      #    }) {};

      # "beam-migrate" = self.callPackage
      #   ({ mkDerivation, aeson, base, beam-core, bytestring, containers
      #    , deepseq, dependent-map, dependent-sum, free, ghc-prim, hashable
      #    , haskell-src-exts, mtl, parallel, pqueue, pretty, scientific
      #    , stdenv, text, time, unordered-containers, vector
      #    }:
      #    mkDerivation {
      #      pname = "beam-migrate";
      #      version = "0.3.1.0";
      #      src = "${beam-src}/beam-migrate";
      #      libraryHaskellDepends = [
      #        aeson base beam-core bytestring containers deepseq dependent-map
      #        dependent-sum free ghc-prim hashable haskell-src-exts mtl parallel
      #        pqueue pretty scientific text time unordered-containers vector
      #      ];
      #      homepage = "https://travis.athougies.net/projects/beam.html";
      #      description = "Database migrations library for Beam";
      #      license = stdenv.lib.licenses.mit;
      #    }) {};

      # "beam-postgres" = self.callPackage
      #   ({ mkDerivation, aeson, base, beam-core, beam-migrate, bytestring
      #    , case-insensitive, conduit, free, hashable, haskell-src-exts, mtl
      #    , network-uri, postgresql-libpq, postgresql-simple, scientific
      #    , stdenv, text, time, unordered-containers, uuid, vector
      #    , lifted-base, monad-control
      #    }:
      #    mkDerivation {
      #      pname = "beam-postgres";
      #      version = "0.3.2.0";
      #      src = "${beam-src}/beam-postgres";
      #      libraryHaskellDepends = [
      #        aeson base beam-core beam-migrate bytestring case-insensitive
      #        conduit free hashable haskell-src-exts mtl network-uri
      #        postgresql-libpq postgresql-simple scientific text time
      #        unordered-containers uuid vector
      #        lifted-base monad-control
      #      ];
      #      homepage = "http://travis.athougies.net/projects/beam.html";
      #      description = "Connection layer between beam and postgres";
      #      license = stdenv.lib.licenses.mit;
      #    }) {};

      # "thrift" = haskell.lib.dontCheck (haskell.lib.doJailbreak super.thrift);

      # "network-transport" = self.callCabal2nix
      #   "network-transport"
      #   (pkgs.fetchFromGitHub {
      #     owner = "haskell-distributed";
      #     repo = "network-transport";
      #     rev = "4d57d8575f83af17498e60f378ba65be9b9e3027";
      #     sha256 = "13jrfshlcp99w29inlkmm7m0cj3xz0lrfgfyw8fjkhnlwg7yllhl";
      #   }) {};

      # "network-transport-tcp" =
      #    haskell.lib.overrideCabal
      #      (haskell.lib.addBuildDepend  super.network-transport-tcp (self.uuid))
      #      (drv: {
      #         src = fetchgit {
      #           url = "git://github.com/haskell-distributed/network-transport-tcp";
      #           rev = "6a67f49717c2269e4b17995155c7a908c6f363ee";
      #           sha256 = "0919j3rrwiq4l9hk0p8a346jglshg14dl2ffrp5r486xwvl6ijs6";
      #         };
      #       });

      # "distributed-process-lifted" =
      #   haskell.lib.overrideCabal super.distributed-process-lifted
      #    (drv: {
      #       src = fetchgit {
      #         url = "git://github.com/jeremyjh/distributed-process-lifted.git";
      #         rev = "ed2189e97da2e16e50a547c9b59d74e80c6cfa63";
      #         sha256 = "1ych6k2wyfqcsyj1mbdm1swnx56x9bjnxpqgyzfvaii201ncklij";
      #       };
      #       doCheck = false;
      #     });

      # "inline-c" = self.callPackage
      #   ({ mkDerivation, ansi-wl-pprint, base, bytestring, containers
      #    , hashable, hspec, mtl, parsec, parsers, QuickCheck, raw-strings-qq
      #    , regex-posix, template-haskell, transformers, unordered-containers
      #    , vector
      #    }:
      #    mkDerivation {
      #      pname = "inline-c";
      #      version = "0.6.0.5";
      #      sha256 = "0fy19z3r6xyzhkkagi050rasc4ak8xmvdgidy4wplayck9fr3z47";
      #      isLibrary = true;
      #      isExecutable = true;
      #      libraryHaskellDepends = [
      #        ansi-wl-pprint base bytestring containers hashable mtl parsec
      #        parsers template-haskell transformers unordered-containers vector
      #      ];
      #      testHaskellDepends = [
      #        ansi-wl-pprint base containers hashable hspec parsers QuickCheck
      #        raw-strings-qq regex-posix template-haskell transformers
      #        unordered-containers vector
      #      ];
      #      description = "Write Haskell source files including C code inline. No FFI required.";
      #      license = stdenv.lib.licenses.mit;
      #    }) {};

      # "inline-java" =
      #    let

      #      inline-java_1 = self.callPackage
      #        ({ mkDerivation, base, bytestring, Cabal, directory, filepath, ghc
      #         , hspec, jni, jvm, language-java, mtl, process, template-haskell
      #         , temporary, text
      #         }:
      #         mkDerivation {
      #           pname = "inline-java";
      #           version = "0.8.2";
      #           sha256 = "0f38w4p29xzrzqjdn2r3yfh2m9iai6dwbj52jhrliiy87gnvwwmy";
      #           libraryHaskellDepends = [
      #             base bytestring Cabal directory filepath ghc jni jvm language-java
      #             mtl process template-haskell temporary text
      #           ];
      #           testHaskellDepends = [ base hspec jni jvm text ];
      #           homepage = "http://github.com/tweag/inline-java#readme";
      #           description = "Java interop via inline Java code in Haskell modules";
      #           license = stdenv.lib.licenses.bsd3;
      #         }) {};
      #   in haskell.lib.addBuildDepend inline-java_1 pkgs.jdk;


      # "jni" =
      #   let

      #     jni_1 = self.callPackage
      #       ({ mkDerivation, base, bytestring, choice, constraints, containers
      #        , cpphs, deepseq, inline-c, jdk, singletons
      #        }:
      #        mkDerivation {
      #          pname = "jni";
      #          version = "0.6.0";
      #          sha256 = "04phf6sqfp8g9rqfj2lxg2j43350wlini1dnsjwyr6yvy888z9ba";
      #          libraryHaskellDepends = [
      #            base bytestring choice constraints containers deepseq inline-c
      #            singletons
      #          ];
      #          librarySystemDepends = [ jdk ];
      #          libraryToolDepends = [ cpphs ];
      #          homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
      #          description = "Complete JNI raw bindings";
      #          license = stdenv.lib.licenses.bsd3;
      #        }) {}; # {inherit (pkgs) jdk;};
      #      in   # jni needs help finding libjvm.so because it's in a weird location.
      #         haskell.lib.overrideCabal jni_1 (drv: {
      #           preConfigure = ''
      #             local libdir=( "${pkgs.jdk}/lib/openjdk/jre/lib/"*"/server" )
      #             configureFlags+=" --extra-lib-dir=''${libdir[0]}"
      #          '';
      #         });


      # "jvm" = self.callPackage
      #   ({ mkDerivation, base, bytestring, choice, constraints, criterion
      #    , deepseq, distributed-closure, exceptions, hspec, jni, singletons
      #    , text, vector
      #    }:
      #    mkDerivation {
      #      pname = "jvm";
      #      version = "0.4.2";
      #      sha256 = "1z3lk2f7bmhi8bj4v32fymjr2bf9czjd73qm6gk33z4mxknddwbh";
      #      libraryHaskellDepends = [
      #        base bytestring choice constraints distributed-closure exceptions
      #        jni singletons text vector
      #      ];
      #      testHaskellDepends = [ base bytestring hspec jni text ];
      #      benchmarkHaskellDepends = [
      #        base criterion deepseq jni singletons
      #      ];
      #      homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
      #      description = "Call JVM methods from Haskell";
      #      license = stdenv.lib.licenses.bsd3;
      #    }) {};


      # "singletons" = self.callCabal2nix
      #   "singletons"
      #   (pkgs.fetchFromGitHub {
      #     owner = "goldfirere";
      #     repo = "singletons";
      #     rev = "d0fdb2cf02f29d6d076354696aaceb57f2715c85";
      #     sha256 = "0rmrin5i899vfqqm47b2lkij47i2ai18714xs8zq2vb267hhqngk";
      #   }) {};

      # "th-desugar" = self.callCabal2nix
      #   "th-desugar"
      #   (pkgs.fetchFromGitHub {
      #     owner = "goldfirere";
      #     repo = "th-desugar";
      #     rev = "f3f23bec71db8b13544773d0190fc028c1c716d2";
      #     sha256 = "1bn2qx533k4vf1lf329hl8v6kf5n1kar4psb9q3ax7bgs85k5icz";
      #   }) {};

      # "transformers-either" = self.callCabal2nix
      #   "transformers-either"
      #   (pkgs.fetchFromGitHub {
      #     owner = "tmcgilchrist";
      #     repo = "transformers-either";
      #     rev = "9c13ec6fda4c7f64185ceea442583fdd09bffe1b";
      #     sha256 = "1v9izx779xvir4f4cg9rccmghgxc9g79p9hqz5wmhqkqk9rlfy77";
      #   }) {};

      # "rank1dynamic" = haskell.lib.overrideCabal super.rank1dynamic (drv: {
      #   version = "0.4.0";
      #   sha256 = "07dbfp0sc32q1p8xh4ap8m3b287r9hh4r8vfsrppdm5pabz4nhiw";
      # });

    }
