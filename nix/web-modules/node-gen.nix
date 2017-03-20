{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."ansi-regex"."^0.2.0" =
    self.by-version."ansi-regex"."0.2.1";
  by-version."ansi-regex"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "ansi-regex-0.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-0.2.1.tgz";
        name = "ansi-regex-0.2.1.tgz";
        sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
      })
    ];
    buildInputs =
      (self.nativeDeps."ansi-regex" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ansi-regex" ];
  };
  by-spec."ansi-regex"."^0.2.1" =
    self.by-version."ansi-regex"."0.2.1";
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.0.0";
  by-version."ansi-regex"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "ansi-regex-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.0.0.tgz";
        name = "ansi-regex-2.0.0.tgz";
        sha1 = "c5061b6e0ef8a81775e50f5d66151bf6bf371107";
      })
    ];
    buildInputs =
      (self.nativeDeps."ansi-regex" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ansi-regex" ];
  };
  by-spec."ansi-styles"."^1.1.0" =
    self.by-version."ansi-styles"."1.1.0";
  by-version."ansi-styles"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "ansi-styles-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-1.1.0.tgz";
        name = "ansi-styles-1.1.0.tgz";
        sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
      })
    ];
    buildInputs =
      (self.nativeDeps."ansi-styles" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ansi-styles" ];
  };
  by-spec."ansi-styles"."^2.2.1" =
    self.by-version."ansi-styles"."2.2.1";
  by-version."ansi-styles"."2.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "ansi-styles-2.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
        name = "ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      })
    ];
    buildInputs =
      (self.nativeDeps."ansi-styles" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ansi-styles" ];
  };
  by-spec."argparse"."1.0.4" =
    self.by-version."argparse"."1.0.4";
  by-version."argparse"."1.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "argparse-1.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/argparse/-/argparse-1.0.4.tgz";
        name = "argparse-1.0.4.tgz";
        sha1 = "2b12247b933001971addcbfe4e67d20fd395bbf4";
      })
    ];
    buildInputs =
      (self.nativeDeps."argparse" or []);
    deps = {
      "lodash-4.15.0" = self.by-version."lodash"."4.15.0";
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "argparse" ];
  };
  "argparse" = self.by-version."argparse"."1.0.4";
  by-spec."argparse"."^1.0.7" =
    self.by-version."argparse"."1.0.7";
  by-version."argparse"."1.0.7" = lib.makeOverridable self.buildNodePackage {
    name = "argparse-1.0.7";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/argparse/-/argparse-1.0.7.tgz";
        name = "argparse-1.0.7.tgz";
        sha1 = "c289506480557810f14a8bc62d7a06f63ed7f951";
      })
    ];
    buildInputs =
      (self.nativeDeps."argparse" or []);
    deps = {
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "argparse" ];
  };
  by-spec."array-find-index"."^1.0.1" =
    self.by-version."array-find-index"."1.0.1";
  by-version."array-find-index"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "array-find-index-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.1.tgz";
        name = "array-find-index-1.0.1.tgz";
        sha1 = "0bc25ddac941ec8a496ae258fd4ac188003ef3af";
      })
    ];
    buildInputs =
      (self.nativeDeps."array-find-index" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "array-find-index" ];
  };
  by-spec."asn1"."~0.2.3" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = lib.makeOverridable self.buildNodePackage {
    name = "asn1-0.2.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
        name = "asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      })
    ];
    buildInputs =
      (self.nativeDeps."asn1" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "asn1" ];
  };
  by-spec."assert-plus"."^0.2.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "assert-plus-0.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
        name = "assert-plus-0.2.0.tgz";
        sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
      })
    ];
    buildInputs =
      (self.nativeDeps."assert-plus" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "assert-plus" ];
  };
  by-spec."assert-plus"."^1.0.0" =
    self.by-version."assert-plus"."1.0.0";
  by-version."assert-plus"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "assert-plus-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
        name = "assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      })
    ];
    buildInputs =
      (self.nativeDeps."assert-plus" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "assert-plus" ];
  };
  by-spec."assertion-error"."1.0.0" =
    self.by-version."assertion-error"."1.0.0";
  by-version."assertion-error"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "assertion-error-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.0.tgz";
        name = "assertion-error-1.0.0.tgz";
        sha1 = "c7f85438fdd466bc7ca16ab90c81513797a5d23b";
      })
    ];
    buildInputs =
      (self.nativeDeps."assertion-error" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "assertion-error" ];
  };
  by-spec."assertion-error"."^1.0.0" =
    self.by-version."assertion-error"."1.0.2";
  by-version."assertion-error"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "assertion-error-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.2.tgz";
        name = "assertion-error-1.0.2.tgz";
        sha1 = "13ca515d86206da0bac66e834dd397d87581094c";
      })
    ];
    buildInputs =
      (self.nativeDeps."assertion-error" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "assertion-error" ];
  };
  by-spec."async"."0.2.x" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = lib.makeOverridable self.buildNodePackage {
    name = "async-0.2.10";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/async/-/async-0.2.10.tgz";
        name = "async-0.2.10.tgz";
        sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
      })
    ];
    buildInputs =
      (self.nativeDeps."async" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "async" ];
  };
  by-spec."async"."^1.5.2" =
    self.by-version."async"."1.5.2";
  by-version."async"."1.5.2" = lib.makeOverridable self.buildNodePackage {
    name = "async-1.5.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/async/-/async-1.5.2.tgz";
        name = "async-1.5.2.tgz";
        sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
      })
    ];
    buildInputs =
      (self.nativeDeps."async" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "async" ];
  };
  by-spec."aws-sign2"."~0.6.0" =
    self.by-version."aws-sign2"."0.6.0";
  by-version."aws-sign2"."0.6.0" = lib.makeOverridable self.buildNodePackage {
    name = "aws-sign2-0.6.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
        name = "aws-sign2-0.6.0.tgz";
        sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
      })
    ];
    buildInputs =
      (self.nativeDeps."aws-sign2" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "aws-sign2" ];
  };
  by-spec."aws4"."^1.2.1" =
    self.by-version."aws4"."1.4.1";
  by-version."aws4"."1.4.1" = lib.makeOverridable self.buildNodePackage {
    name = "aws4-1.4.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/aws4/-/aws4-1.4.1.tgz";
        name = "aws4-1.4.1.tgz";
        sha1 = "fde7d5292466d230e5ee0f4e038d9dfaab08fc61";
      })
    ];
    buildInputs =
      (self.nativeDeps."aws4" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "aws4" ];
  };
  by-spec."balanced-match"."^0.4.1" =
    self.by-version."balanced-match"."0.4.2";
  by-version."balanced-match"."0.4.2" = lib.makeOverridable self.buildNodePackage {
    name = "balanced-match-0.4.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.4.2.tgz";
        name = "balanced-match-0.4.2.tgz";
        sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
      })
    ];
    buildInputs =
      (self.nativeDeps."balanced-match" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "balanced-match" ];
  };
  by-spec."bl"."^0.9.3" =
    self.by-version."bl"."0.9.5";
  by-version."bl"."0.9.5" = lib.makeOverridable self.buildNodePackage {
    name = "bl-0.9.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bl/-/bl-0.9.5.tgz";
        name = "bl-0.9.5.tgz";
        sha1 = "c06b797af085ea00bc527afc8efcf11de2232054";
      })
    ];
    buildInputs =
      (self.nativeDeps."bl" or []);
    deps = {
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
    };
    peerDependencies = [
    ];
    passthru.names = [ "bl" ];
  };
  by-spec."bl"."~1.1.2" =
    self.by-version."bl"."1.1.2";
  by-version."bl"."1.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "bl-1.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bl/-/bl-1.1.2.tgz";
        name = "bl-1.1.2.tgz";
        sha1 = "fdca871a99713aa00d19e3bbba41c44787a65398";
      })
    ];
    buildInputs =
      (self.nativeDeps."bl" or []);
    deps = {
      "readable-stream-2.0.6" = self.by-version."readable-stream"."2.0.6";
    };
    peerDependencies = [
    ];
    passthru.names = [ "bl" ];
  };
  by-spec."bluebird"."~1.2.4" =
    self.by-version."bluebird"."1.2.4";
  by-version."bluebird"."1.2.4" = lib.makeOverridable self.buildNodePackage {
    name = "bluebird-1.2.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bluebird/-/bluebird-1.2.4.tgz";
        name = "bluebird-1.2.4.tgz";
        sha1 = "5985ec23cb6ff1a5834cc6447b3c5ef010fd321a";
      })
    ];
    buildInputs =
      (self.nativeDeps."bluebird" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "bluebird" ];
  };
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = lib.makeOverridable self.buildNodePackage {
    name = "boom-2.10.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
        name = "boom-2.10.1.tgz";
        sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
      })
    ];
    buildInputs =
      (self.nativeDeps."boom" or []);
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "boom" ];
  };
  by-spec."bower".">=1.2.8 <2" =
    self.by-version."bower"."1.7.9";
  by-version."bower"."1.7.9" = lib.makeOverridable self.buildNodePackage {
    name = "bower-1.7.9";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bower/-/bower-1.7.9.tgz";
        name = "bower-1.7.9.tgz";
        sha1 = "b7296c2393e0d75edaa6ca39648132dd255812b0";
      })
    ];
    buildInputs =
      (self.nativeDeps."bower" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "bower" ];
  };
  "bower" = self.by-version."bower"."1.7.9";
  by-spec."bower-endpoint-parser"."0.2.1" =
    self.by-version."bower-endpoint-parser"."0.2.1";
  by-version."bower-endpoint-parser"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "bower-endpoint-parser-0.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bower-endpoint-parser/-/bower-endpoint-parser-0.2.1.tgz";
        name = "bower-endpoint-parser-0.2.1.tgz";
        sha1 = "8c4010a2900cdab07ea5d38f0bd03e9bbccef90f";
      })
    ];
    buildInputs =
      (self.nativeDeps."bower-endpoint-parser" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "bower-endpoint-parser" ];
  };
  "bower-endpoint-parser" = self.by-version."bower-endpoint-parser"."0.2.1";
  by-spec."bower-json"."0.6.0" =
    self.by-version."bower-json"."0.6.0";
  by-version."bower-json"."0.6.0" = lib.makeOverridable self.buildNodePackage {
    name = "bower-json-0.6.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bower-json/-/bower-json-0.6.0.tgz";
        name = "bower-json-0.6.0.tgz";
        sha1 = "326579b23c33e4ea828e4763c55cd81fd7650329";
      })
    ];
    buildInputs =
      (self.nativeDeps."bower-json" or []);
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
      "ext-name-3.0.0" = self.by-version."ext-name"."3.0.0";
      "graceful-fs-3.0.10" = self.by-version."graceful-fs"."3.0.10";
      "intersect-1.0.1" = self.by-version."intersect"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "bower-json" ];
  };
  "bower-json" = self.by-version."bower-json"."0.6.0";
  by-spec."bower-logger"."0.2.1" =
    self.by-version."bower-logger"."0.2.1";
  by-version."bower-logger"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "bower-logger-0.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/bower-logger/-/bower-logger-0.2.1.tgz";
        name = "bower-logger-0.2.1.tgz";
        sha1 = "0c1817c48063a88d96cc3d516c55e57fff5d9ecb";
      })
    ];
    buildInputs =
      (self.nativeDeps."bower-logger" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "bower-logger" ];
  };
  "bower-logger" = self.by-version."bower-logger"."0.2.1";
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.6";
  by-version."brace-expansion"."1.1.6" = lib.makeOverridable self.buildNodePackage {
    name = "brace-expansion-1.1.6";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.6.tgz";
        name = "brace-expansion-1.1.6.tgz";
        sha1 = "7197d7eaa9b87e648390ea61fc66c84427420df9";
      })
    ];
    buildInputs =
      (self.nativeDeps."brace-expansion" or []);
    deps = {
      "balanced-match-0.4.2" = self.by-version."balanced-match"."0.4.2";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "brace-expansion" ];
  };
  by-spec."buffer-shims"."^1.0.0" =
    self.by-version."buffer-shims"."1.0.0";
  by-version."buffer-shims"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "buffer-shims-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/buffer-shims/-/buffer-shims-1.0.0.tgz";
        name = "buffer-shims-1.0.0.tgz";
        sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
      })
    ];
    buildInputs =
      (self.nativeDeps."buffer-shims" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "buffer-shims" ];
  };
  by-spec."builtin-modules"."^1.0.0" =
    self.by-version."builtin-modules"."1.1.1";
  by-version."builtin-modules"."1.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "builtin-modules-1.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.1.tgz";
        name = "builtin-modules-1.1.1.tgz";
        sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
      })
    ];
    buildInputs =
      (self.nativeDeps."builtin-modules" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "builtin-modules" ];
  };
  by-spec."camelcase"."^2.0.0" =
    self.by-version."camelcase"."2.1.1";
  by-version."camelcase"."2.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "camelcase-2.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz";
        name = "camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      })
    ];
    buildInputs =
      (self.nativeDeps."camelcase" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "camelcase" ];
  };
  by-spec."camelcase-keys"."^2.0.0" =
    self.by-version."camelcase-keys"."2.1.0";
  by-version."camelcase-keys"."2.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "camelcase-keys-2.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
        name = "camelcase-keys-2.1.0.tgz";
        sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
      })
    ];
    buildInputs =
      (self.nativeDeps."camelcase-keys" or []);
    deps = {
      "camelcase-2.1.1" = self.by-version."camelcase"."2.1.1";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "camelcase-keys" ];
  };
  by-spec."caseless"."~0.11.0" =
    self.by-version."caseless"."0.11.0";
  by-version."caseless"."0.11.0" = lib.makeOverridable self.buildNodePackage {
    name = "caseless-0.11.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
        name = "caseless-0.11.0.tgz";
        sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
      })
    ];
    buildInputs =
      (self.nativeDeps."caseless" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "caseless" ];
  };
  by-spec."chalk"."^0.5.1" =
    self.by-version."chalk"."0.5.1";
  by-version."chalk"."0.5.1" = lib.makeOverridable self.buildNodePackage {
    name = "chalk-0.5.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-0.5.1.tgz";
        name = "chalk-0.5.1.tgz";
        sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
      })
    ];
    buildInputs =
      (self.nativeDeps."chalk" or []);
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "chalk" ];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.1.3";
  by-version."chalk"."1.1.3" = lib.makeOverridable self.buildNodePackage {
    name = "chalk-1.1.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
        name = "chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      })
    ];
    buildInputs =
      (self.nativeDeps."chalk" or []);
    deps = {
      "ansi-styles-2.2.1" = self.by-version."ansi-styles"."2.2.1";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "chalk" ];
  };
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.3";
  by-spec."colors"."^1.1.0" =
    self.by-version."colors"."1.1.2";
  by-version."colors"."1.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "colors-1.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/colors/-/colors-1.1.2.tgz";
        name = "colors-1.1.2.tgz";
        sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
      })
    ];
    buildInputs =
      (self.nativeDeps."colors" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "colors" ];
  };
  by-spec."combined-stream"."^1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-version."combined-stream"."1.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "combined-stream-1.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
        name = "combined-stream-1.0.5.tgz";
        sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
      })
    ];
    buildInputs =
      (self.nativeDeps."combined-stream" or []);
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "combined-stream" ];
  };
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = lib.makeOverridable self.buildNodePackage {
    name = "commander-2.9.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
        name = "commander-2.9.0.tgz";
        sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
      })
    ];
    buildInputs =
      (self.nativeDeps."commander" or []);
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "commander" ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "concat-map-0.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        name = "concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      })
    ];
    buildInputs =
      (self.nativeDeps."concat-map" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "concat-map" ];
  };
  by-spec."configstore"."^0.3.1" =
    self.by-version."configstore"."0.3.2";
  by-version."configstore"."0.3.2" = lib.makeOverridable self.buildNodePackage {
    name = "configstore-0.3.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/configstore/-/configstore-0.3.2.tgz";
        name = "configstore-0.3.2.tgz";
        sha1 = "25e4c16c3768abf75c5a65bc61761f495055b459";
      })
    ];
    buildInputs =
      (self.nativeDeps."configstore" or []);
    deps = {
      "graceful-fs-3.0.10" = self.by-version."graceful-fs"."3.0.10";
      "js-yaml-3.6.1" = self.by-version."js-yaml"."3.6.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "osenv-0.1.3" = self.by-version."osenv"."0.1.3";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
      "uuid-2.0.2" = self.by-version."uuid"."2.0.2";
      "xdg-basedir-1.0.1" = self.by-version."xdg-basedir"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "configstore" ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.2";
  by-version."core-util-is"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "core-util-is-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        name = "core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      })
    ];
    buildInputs =
      (self.nativeDeps."core-util-is" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "core-util-is" ];
  };
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.5";
  by-version."cryptiles"."2.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "cryptiles-2.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
        name = "cryptiles-2.0.5.tgz";
        sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
      })
    ];
    buildInputs =
      (self.nativeDeps."cryptiles" or []);
    deps = {
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "cryptiles" ];
  };
  by-spec."currently-unhandled"."^0.4.1" =
    self.by-version."currently-unhandled"."0.4.1";
  by-version."currently-unhandled"."0.4.1" = lib.makeOverridable self.buildNodePackage {
    name = "currently-unhandled-0.4.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
        name = "currently-unhandled-0.4.1.tgz";
        sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
      })
    ];
    buildInputs =
      (self.nativeDeps."currently-unhandled" or []);
    deps = {
      "array-find-index-1.0.1" = self.by-version."array-find-index"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "currently-unhandled" ];
  };
  by-spec."dashdash"."^1.12.0" =
    self.by-version."dashdash"."1.14.0";
  by-version."dashdash"."1.14.0" = lib.makeOverridable self.buildNodePackage {
    name = "dashdash-1.14.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.0.tgz";
        name = "dashdash-1.14.0.tgz";
        sha1 = "29e486c5418bf0f356034a993d51686a33e84141";
      })
    ];
    buildInputs =
      (self.nativeDeps."dashdash" or []);
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "dashdash" ];
  };
  by-spec."debug"."^2.1.0" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "debug-2.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
        name = "debug-2.2.0.tgz";
        sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
      })
    ];
    buildInputs =
      (self.nativeDeps."debug" or []);
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "debug" ];
  };
  by-spec."decamelize"."^1.1.2" =
    self.by-version."decamelize"."1.2.0";
  by-version."decamelize"."1.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "decamelize-1.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz";
        name = "decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      })
    ];
    buildInputs =
      (self.nativeDeps."decamelize" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "decamelize" ];
  };
  by-spec."deep-extend"."^0.4.0" =
    self.by-version."deep-extend"."0.4.1";
  by-version."deep-extend"."0.4.1" = lib.makeOverridable self.buildNodePackage {
    name = "deep-extend-0.4.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.4.1.tgz";
        name = "deep-extend-0.4.1.tgz";
        sha1 = "efe4113d08085f4e6f9687759810f807469e2253";
      })
    ];
    buildInputs =
      (self.nativeDeps."deep-extend" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "deep-extend" ];
  };
  by-spec."deep-extend"."~0.4.0" =
    self.by-version."deep-extend"."0.4.1";
  by-spec."deep-freeze"."0.0.1" =
    self.by-version."deep-freeze"."0.0.1";
  by-version."deep-freeze"."0.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "deep-freeze-0.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/deep-freeze/-/deep-freeze-0.0.1.tgz";
        name = "deep-freeze-0.0.1.tgz";
        sha1 = "3a0b0005de18672819dfd38cd31f91179c893e84";
      })
    ];
    buildInputs =
      (self.nativeDeps."deep-freeze" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "deep-freeze" ];
  };
  by-spec."definition-header"."~0.1.0" =
    self.by-version."definition-header"."0.1.0";
  by-version."definition-header"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "definition-header-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/definition-header/-/definition-header-0.1.0.tgz";
        name = "definition-header-0.1.0.tgz";
        sha1 = "01445ff4ca663114cbf2c5a1131f13bb544eb5dd";
      })
    ];
    buildInputs =
      (self.nativeDeps."definition-header" or []);
    deps = {
      "joi-4.9.0" = self.by-version."joi"."4.9.0";
      "joi-assert-0.0.3" = self.by-version."joi-assert"."0.0.3";
      "parsimmon-0.5.1" = self.by-version."parsimmon"."0.5.1";
      "xregexp-2.0.0" = self.by-version."xregexp"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "definition-header" ];
  };
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        name = "delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      })
    ];
    buildInputs =
      (self.nativeDeps."delayed-stream" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "delayed-stream" ];
  };
  by-spec."detect-indent"."^0.2.0" =
    self.by-version."detect-indent"."0.2.0";
  by-version."detect-indent"."0.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "detect-indent-0.2.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/detect-indent/-/detect-indent-0.2.0.tgz";
        name = "detect-indent-0.2.0.tgz";
        sha1 = "042914498979ac2d9f3c73e4ff3e6877d3bc92b6";
      })
    ];
    buildInputs =
      (self.nativeDeps."detect-indent" or []);
    deps = {
      "get-stdin-0.1.0" = self.by-version."get-stdin"."0.1.0";
      "minimist-0.1.0" = self.by-version."minimist"."0.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "detect-indent" ];
  };
  by-spec."diff"."^1.4.0" =
    self.by-version."diff"."1.4.0";
  by-version."diff"."1.4.0" = lib.makeOverridable self.buildNodePackage {
    name = "diff-1.4.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
        name = "diff-1.4.0.tgz";
        sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
      })
    ];
    buildInputs =
      (self.nativeDeps."diff" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "diff" ];
  };
  by-spec."duplexer"."~0.1.1" =
    self.by-version."duplexer"."0.1.1";
  by-version."duplexer"."0.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "duplexer-0.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/duplexer/-/duplexer-0.1.1.tgz";
        name = "duplexer-0.1.1.tgz";
        sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
      })
    ];
    buildInputs =
      (self.nativeDeps."duplexer" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "duplexer" ];
  };
  by-spec."duplexify"."^3.2.0" =
    self.by-version."duplexify"."3.4.5";
  by-version."duplexify"."3.4.5" = lib.makeOverridable self.buildNodePackage {
    name = "duplexify-3.4.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/duplexify/-/duplexify-3.4.5.tgz";
        name = "duplexify-3.4.5.tgz";
        sha1 = "0e7e287a775af753bf57e6e7b7f21f183f6c3a53";
      })
    ];
    buildInputs =
      (self.nativeDeps."duplexify" or []);
    deps = {
      "end-of-stream-1.0.0" = self.by-version."end-of-stream"."1.0.0";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "readable-stream-2.1.5" = self.by-version."readable-stream"."2.1.5";
      "stream-shift-1.0.0" = self.by-version."stream-shift"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "duplexify" ];
  };
  by-spec."ecc-jsbn"."~0.1.1" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
        name = "ecc-jsbn-0.1.1.tgz";
        sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
      })
    ];
    buildInputs =
      (self.nativeDeps."ecc-jsbn" or []);
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "ecc-jsbn" ];
  };
  by-spec."end-of-stream"."1.0.0" =
    self.by-version."end-of-stream"."1.0.0";
  by-version."end-of-stream"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "end-of-stream-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.0.0.tgz";
        name = "end-of-stream-1.0.0.tgz";
        sha1 = "d4596e702734a93e40e9af864319eabd99ff2f0e";
      })
    ];
    buildInputs =
      (self.nativeDeps."end-of-stream" or []);
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "end-of-stream" ];
  };
  by-spec."ends-with"."^0.2.0" =
    self.by-version."ends-with"."0.2.0";
  by-version."ends-with"."0.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "ends-with-0.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ends-with/-/ends-with-0.2.0.tgz";
        name = "ends-with-0.2.0.tgz";
        sha1 = "2f9da98d57a50cfda4571ce4339000500f4e6b8a";
      })
    ];
    buildInputs =
      (self.nativeDeps."ends-with" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ends-with" ];
  };
  by-spec."error-ex"."^1.2.0" =
    self.by-version."error-ex"."1.3.0";
  by-version."error-ex"."1.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "error-ex-1.3.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/error-ex/-/error-ex-1.3.0.tgz";
        name = "error-ex-1.3.0.tgz";
        sha1 = "e67b43f3e82c96ea3a584ffee0b9fc3325d802d9";
      })
    ];
    buildInputs =
      (self.nativeDeps."error-ex" or []);
    deps = {
      "is-arrayish-0.2.1" = self.by-version."is-arrayish"."0.2.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "error-ex" ];
  };
  by-spec."escape-string-regexp"."^1.0.0" =
    self.by-version."escape-string-regexp"."1.0.5";
  by-version."escape-string-regexp"."1.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "escape-string-regexp-1.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        name = "escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      })
    ];
    buildInputs =
      (self.nativeDeps."escape-string-regexp" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "escape-string-regexp" ];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.5";
  by-spec."esprima"."^2.6.0" =
    self.by-version."esprima"."2.7.2";
  by-version."esprima"."2.7.2" = lib.makeOverridable self.buildNodePackage {
    name = "esprima-2.7.2";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/esprima/-/esprima-2.7.2.tgz";
        name = "esprima-2.7.2.tgz";
        sha1 = "f43be543609984eae44c933ac63352a6af35f339";
      })
    ];
    buildInputs =
      (self.nativeDeps."esprima" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "esprima" ];
  };
  by-spec."event-stream"."~3.1.5" =
    self.by-version."event-stream"."3.1.7";
  by-version."event-stream"."3.1.7" = lib.makeOverridable self.buildNodePackage {
    name = "event-stream-3.1.7";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/event-stream/-/event-stream-3.1.7.tgz";
        name = "event-stream-3.1.7.tgz";
        sha1 = "b4c540012d0fe1498420f3d8946008db6393c37a";
      })
    ];
    buildInputs =
      (self.nativeDeps."event-stream" or []);
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
      "from-0.1.3" = self.by-version."from"."0.1.3";
      "map-stream-0.1.0" = self.by-version."map-stream"."0.1.0";
      "pause-stream-0.0.11" = self.by-version."pause-stream"."0.0.11";
      "split-0.2.10" = self.by-version."split"."0.2.10";
      "stream-combiner-0.0.4" = self.by-version."stream-combiner"."0.0.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "event-stream" ];
  };
  by-spec."exit"."~0.1.2" =
    self.by-version."exit"."0.1.2";
  by-version."exit"."0.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "exit-0.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/exit/-/exit-0.1.2.tgz";
        name = "exit-0.1.2.tgz";
        sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
      })
    ];
    buildInputs =
      (self.nativeDeps."exit" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "exit" ];
  };
  by-spec."ext-list"."^2.0.0" =
    self.by-version."ext-list"."2.2.0";
  by-version."ext-list"."2.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "ext-list-2.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ext-list/-/ext-list-2.2.0.tgz";
        name = "ext-list-2.2.0.tgz";
        sha1 = "a3e6fdeab978bca7a320c7e786f537083fc30055";
      })
    ];
    buildInputs =
      (self.nativeDeps."ext-list" or []);
    deps = {
      "got-2.9.2" = self.by-version."got"."2.9.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "ext-list" ];
  };
  by-spec."ext-name"."^3.0.0" =
    self.by-version."ext-name"."3.0.0";
  by-version."ext-name"."3.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "ext-name-3.0.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ext-name/-/ext-name-3.0.0.tgz";
        name = "ext-name-3.0.0.tgz";
        sha1 = "07e4418737cb1f513c32c6ea48d8b8c8e0471abb";
      })
    ];
    buildInputs =
      (self.nativeDeps."ext-name" or []);
    deps = {
      "ends-with-0.2.0" = self.by-version."ends-with"."0.2.0";
      "ext-list-2.2.0" = self.by-version."ext-list"."2.2.0";
      "meow-3.7.0" = self.by-version."meow"."3.7.0";
      "sort-keys-length-1.0.1" = self.by-version."sort-keys-length"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "ext-name" ];
  };
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
  by-version."extend"."3.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "extend-3.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
        name = "extend-3.0.0.tgz";
        sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
      })
    ];
    buildInputs =
      (self.nativeDeps."extend" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "extend" ];
  };
  by-spec."extsprintf"."1.0.2" =
    self.by-version."extsprintf"."1.0.2";
  by-version."extsprintf"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "extsprintf-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
        name = "extsprintf-1.0.2.tgz";
        sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
      })
    ];
    buildInputs =
      (self.nativeDeps."extsprintf" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "extsprintf" ];
  };
  by-spec."extsprintf"."1.0.3" =
    self.by-version."extsprintf"."1.0.3";
  by-version."extsprintf"."1.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "extsprintf-1.0.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.3.tgz";
        name = "extsprintf-1.0.3.tgz";
        sha1 = "3310ca8ced5205e5234766b0b2744ea5b2788d67";
      })
    ];
    buildInputs =
      (self.nativeDeps."extsprintf" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "extsprintf" ];
  };
  by-spec."find-up"."^1.0.0" =
    self.by-version."find-up"."1.1.2";
  by-version."find-up"."1.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "find-up-1.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz";
        name = "find-up-1.1.2.tgz";
        sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
      })
    ];
    buildInputs =
      (self.nativeDeps."find-up" or []);
    deps = {
      "path-exists-2.1.0" = self.by-version."path-exists"."2.1.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "find-up" ];
  };
  by-spec."foreach"."^2.0.4" =
    self.by-version."foreach"."2.0.5";
  by-version."foreach"."2.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "foreach-2.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz";
        name = "foreach-2.0.5.tgz";
        sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
      })
    ];
    buildInputs =
      (self.nativeDeps."foreach" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "foreach" ];
  };
  by-spec."forever-agent"."~0.6.1" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = lib.makeOverridable self.buildNodePackage {
    name = "forever-agent-0.6.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
        name = "forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      })
    ];
    buildInputs =
      (self.nativeDeps."forever-agent" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "forever-agent" ];
  };
  by-spec."form-data"."~1.0.0-rc4" =
    self.by-version."form-data"."1.0.0-rc4";
  by-version."form-data"."1.0.0-rc4" = lib.makeOverridable self.buildNodePackage {
    name = "form-data-1.0.0-rc4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-1.0.0-rc4.tgz";
        name = "form-data-1.0.0-rc4.tgz";
        sha1 = "05ac6bc22227b43e4461f488161554699d4f8b5e";
      })
    ];
    buildInputs =
      (self.nativeDeps."form-data" or []);
    deps = {
      "async-1.5.2" = self.by-version."async"."1.5.2";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
    };
    peerDependencies = [
    ];
    passthru.names = [ "form-data" ];
  };
  by-spec."from"."~0" =
    self.by-version."from"."0.1.3";
  by-version."from"."0.1.3" = lib.makeOverridable self.buildNodePackage {
    name = "from-0.1.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/from/-/from-0.1.3.tgz";
        name = "from-0.1.3.tgz";
        sha1 = "ef63ac2062ac32acf7862e0d40b44b896f22f3bc";
      })
    ];
    buildInputs =
      (self.nativeDeps."from" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "from" ];
  };
  by-spec."fs-extra"."~0.26.5" =
    self.by-version."fs-extra"."0.26.7";
  by-version."fs-extra"."0.26.7" = lib.makeOverridable self.buildNodePackage {
    name = "fs-extra-0.26.7";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/fs-extra/-/fs-extra-0.26.7.tgz";
        name = "fs-extra-0.26.7.tgz";
        sha1 = "9ae1fdd94897798edab76d0918cf42d0c3184fa9";
      })
    ];
    buildInputs =
      (self.nativeDeps."fs-extra" or []);
    deps = {
      "graceful-fs-4.1.6" = self.by-version."graceful-fs"."4.1.6";
      "jsonfile-2.3.1" = self.by-version."jsonfile"."2.3.1";
      "klaw-1.3.0" = self.by-version."klaw"."1.3.0";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
      "rimraf-2.5.4" = self.by-version."rimraf"."2.5.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "fs-extra" ];
  };
  "fs-extra" = self.by-version."fs-extra"."0.26.7";
  by-spec."fs.realpath"."^1.0.0" =
    self.by-version."fs.realpath"."1.0.0";
  by-version."fs.realpath"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "fs.realpath-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        name = "fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      })
    ];
    buildInputs =
      (self.nativeDeps."fs.realpath" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "fs.realpath" ];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "generate-function-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
        name = "generate-function-2.0.0.tgz";
        sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
      })
    ];
    buildInputs =
      (self.nativeDeps."generate-function" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "generate-function" ];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
        name = "generate-object-property-1.2.0.tgz";
        sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
      })
    ];
    buildInputs =
      (self.nativeDeps."generate-object-property" or []);
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "generate-object-property" ];
  };
  by-spec."get-stdin"."^0.1.0" =
    self.by-version."get-stdin"."0.1.0";
  by-version."get-stdin"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "get-stdin-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/get-stdin/-/get-stdin-0.1.0.tgz";
        name = "get-stdin-0.1.0.tgz";
        sha1 = "5998af24aafc802d15c82c685657eeb8b10d4a91";
      })
    ];
    buildInputs =
      (self.nativeDeps."get-stdin" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "get-stdin" ];
  };
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "get-stdin-4.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
        name = "get-stdin-4.0.1.tgz";
        sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
      })
    ];
    buildInputs =
      (self.nativeDeps."get-stdin" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "get-stdin" ];
  };
  by-spec."getpass"."^0.1.1" =
    self.by-version."getpass"."0.1.6";
  by-version."getpass"."0.1.6" = lib.makeOverridable self.buildNodePackage {
    name = "getpass-0.1.6";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/getpass/-/getpass-0.1.6.tgz";
        name = "getpass-0.1.6.tgz";
        sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
      })
    ];
    buildInputs =
      (self.nativeDeps."getpass" or []);
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "getpass" ];
  };
  by-spec."glob"."6.0.4" =
    self.by-version."glob"."6.0.4";
  by-version."glob"."6.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "glob-6.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-6.0.4.tgz";
        name = "glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      })
    ];
    buildInputs =
      (self.nativeDeps."glob" or []);
    deps = {
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "glob" ];
  };
  "glob" = self.by-version."glob"."6.0.4";
  by-spec."glob"."^4.0.6" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = lib.makeOverridable self.buildNodePackage {
    name = "glob-4.5.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
        name = "glob-4.5.3.tgz";
        sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
      })
    ];
    buildInputs =
      (self.nativeDeps."glob" or []);
    deps = {
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "glob" ];
  };
  by-spec."glob"."^7.0.5" =
    self.by-version."glob"."7.0.5";
  by-version."glob"."7.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "glob-7.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-7.0.5.tgz";
        name = "glob-7.0.5.tgz";
        sha1 = "b4202a69099bbb4d292a7c1b95b6682b67ebdc95";
      })
    ];
    buildInputs =
      (self.nativeDeps."glob" or []);
    deps = {
      "fs.realpath-1.0.0" = self.by-version."fs.realpath"."1.0.0";
      "inflight-1.0.5" = self.by-version."inflight"."1.0.5";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "path-is-absolute-1.0.0" = self.by-version."path-is-absolute"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "glob" ];
  };
  by-spec."got"."^2.7.2" =
    self.by-version."got"."2.9.2";
  by-version."got"."2.9.2" = lib.makeOverridable self.buildNodePackage {
    name = "got-2.9.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/got/-/got-2.9.2.tgz";
        name = "got-2.9.2.tgz";
        sha1 = "2e1ee58ea1e8d201e25ae580b96e63c15fefd4ee";
      })
    ];
    buildInputs =
      (self.nativeDeps."got" or []);
    deps = {
      "duplexify-3.4.5" = self.by-version."duplexify"."3.4.5";
      "infinity-agent-2.0.3" = self.by-version."infinity-agent"."2.0.3";
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
      "lowercase-keys-1.0.0" = self.by-version."lowercase-keys"."1.0.0";
      "nested-error-stacks-1.0.2" = self.by-version."nested-error-stacks"."1.0.2";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "prepend-http-1.0.4" = self.by-version."prepend-http"."1.0.4";
      "read-all-stream-2.2.0" = self.by-version."read-all-stream"."2.2.0";
      "statuses-1.3.0" = self.by-version."statuses"."1.3.0";
      "timed-out-2.0.0" = self.by-version."timed-out"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "got" ];
  };
  by-spec."got"."^3.2.0" =
    self.by-version."got"."3.3.1";
  by-version."got"."3.3.1" = lib.makeOverridable self.buildNodePackage {
    name = "got-3.3.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/got/-/got-3.3.1.tgz";
        name = "got-3.3.1.tgz";
        sha1 = "e5d0ed4af55fc3eef4d56007769d98192bcb2eca";
      })
    ];
    buildInputs =
      (self.nativeDeps."got" or []);
    deps = {
      "duplexify-3.4.5" = self.by-version."duplexify"."3.4.5";
      "infinity-agent-2.0.3" = self.by-version."infinity-agent"."2.0.3";
      "is-redirect-1.0.0" = self.by-version."is-redirect"."1.0.0";
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
      "lowercase-keys-1.0.0" = self.by-version."lowercase-keys"."1.0.0";
      "nested-error-stacks-1.0.2" = self.by-version."nested-error-stacks"."1.0.2";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
      "prepend-http-1.0.4" = self.by-version."prepend-http"."1.0.4";
      "read-all-stream-3.1.0" = self.by-version."read-all-stream"."3.1.0";
      "timed-out-2.0.0" = self.by-version."timed-out"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "got" ];
  };
  by-spec."graceful-fs"."^3.0.0" =
    self.by-version."graceful-fs"."3.0.10";
  by-version."graceful-fs"."3.0.10" = lib.makeOverridable self.buildNodePackage {
    name = "graceful-fs-3.0.10";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.10.tgz";
        name = "graceful-fs-3.0.10.tgz";
        sha1 = "5268b37746ff73a549708f3ce47fb54c84d5b0f0";
      })
    ];
    buildInputs =
      (self.nativeDeps."graceful-fs" or []);
    deps = {
      "natives-1.0.2" = self.by-version."natives"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "graceful-fs" ];
  };
  by-spec."graceful-fs"."^3.0.1" =
    self.by-version."graceful-fs"."3.0.10";
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.6";
  by-version."graceful-fs"."4.1.6" = lib.makeOverridable self.buildNodePackage {
    name = "graceful-fs-4.1.6";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.6.tgz";
        name = "graceful-fs-4.1.6.tgz";
        sha1 = "514c38772b31bee2e08bedc21a0aeb3abf54c19e";
      })
    ];
    buildInputs =
      (self.nativeDeps."graceful-fs" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "graceful-fs" ];
  };
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
        name = "graceful-readlink-1.0.1.tgz";
        sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
      })
    ];
    buildInputs =
      (self.nativeDeps."graceful-readlink" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "graceful-readlink" ];
  };
  by-spec."har-validator"."~2.0.6" =
    self.by-version."har-validator"."2.0.6";
  by-version."har-validator"."2.0.6" = lib.makeOverridable self.buildNodePackage {
    name = "har-validator-2.0.6";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/har-validator/-/har-validator-2.0.6.tgz";
        name = "har-validator-2.0.6.tgz";
        sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
      })
    ];
    buildInputs =
      (self.nativeDeps."har-validator" or []);
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.13.1" = self.by-version."is-my-json-valid"."2.13.1";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "har-validator" ];
  };
  by-spec."has-ansi"."^0.1.0" =
    self.by-version."has-ansi"."0.1.0";
  by-version."has-ansi"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "has-ansi-0.1.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/has-ansi/-/has-ansi-0.1.0.tgz";
        name = "has-ansi-0.1.0.tgz";
        sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
      })
    ];
    buildInputs =
      (self.nativeDeps."has-ansi" or []);
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "has-ansi" ];
  };
  by-spec."has-ansi"."^2.0.0" =
    self.by-version."has-ansi"."2.0.0";
  by-version."has-ansi"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "has-ansi-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
        name = "has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      })
    ];
    buildInputs =
      (self.nativeDeps."has-ansi" or []);
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "has-ansi" ];
  };
  by-spec."hawk"."~3.1.3" =
    self.by-version."hawk"."3.1.3";
  by-version."hawk"."3.1.3" = lib.makeOverridable self.buildNodePackage {
    name = "hawk-3.1.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
        name = "hawk-3.1.3.tgz";
        sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
      })
    ];
    buildInputs =
      (self.nativeDeps."hawk" or []);
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
      "cryptiles-2.0.5" = self.by-version."cryptiles"."2.0.5";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    peerDependencies = [
    ];
    passthru.names = [ "hawk" ];
  };
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.16.3";
  by-version."hoek"."2.16.3" = lib.makeOverridable self.buildNodePackage {
    name = "hoek-2.16.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
        name = "hoek-2.16.3.tgz";
        sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
      })
    ];
    buildInputs =
      (self.nativeDeps."hoek" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "hoek" ];
  };
  by-spec."hoek"."^2.2.x" =
    self.by-version."hoek"."2.16.3";
  by-spec."hosted-git-info"."^2.1.4" =
    self.by-version."hosted-git-info"."2.1.5";
  by-version."hosted-git-info"."2.1.5" = lib.makeOverridable self.buildNodePackage {
    name = "hosted-git-info-2.1.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.1.5.tgz";
        name = "hosted-git-info-2.1.5.tgz";
        sha1 = "0ba81d90da2e25ab34a332e6ec77936e1598118b";
      })
    ];
    buildInputs =
      (self.nativeDeps."hosted-git-info" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "hosted-git-info" ];
  };
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.1";
  by-version."http-signature"."1.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "http-signature-1.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/http-signature/-/http-signature-1.1.1.tgz";
        name = "http-signature-1.1.1.tgz";
        sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
      })
    ];
    buildInputs =
      (self.nativeDeps."http-signature" or []);
    deps = {
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "jsprim-1.3.0" = self.by-version."jsprim"."1.3.0";
      "sshpk-1.9.2" = self.by-version."sshpk"."1.9.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "http-signature" ];
  };
  by-spec."indent-string"."^2.1.0" =
    self.by-version."indent-string"."2.1.0";
  by-version."indent-string"."2.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "indent-string-2.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz";
        name = "indent-string-2.1.0.tgz";
        sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
      })
    ];
    buildInputs =
      (self.nativeDeps."indent-string" or []);
    deps = {
      "repeating-2.0.1" = self.by-version."repeating"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "indent-string" ];
  };
  by-spec."infinity-agent"."^2.0.0" =
    self.by-version."infinity-agent"."2.0.3";
  by-version."infinity-agent"."2.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "infinity-agent-2.0.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/infinity-agent/-/infinity-agent-2.0.3.tgz";
        name = "infinity-agent-2.0.3.tgz";
        sha1 = "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216";
      })
    ];
    buildInputs =
      (self.nativeDeps."infinity-agent" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "infinity-agent" ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.5";
  by-version."inflight"."1.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "inflight-1.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/inflight/-/inflight-1.0.5.tgz";
        name = "inflight-1.0.5.tgz";
        sha1 = "db3204cd5a9de2e6cd890b85c6e2f66bcf4f620a";
      })
    ];
    buildInputs =
      (self.nativeDeps."inflight" or []);
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "inflight" ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "inherits-2.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
        name = "inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      })
    ];
    buildInputs =
      (self.nativeDeps."inherits" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "inherits" ];
  };
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-version."ini"."1.3.4" = lib.makeOverridable self.buildNodePackage {
    name = "ini-1.3.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
        name = "ini-1.3.4.tgz";
        sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
      })
    ];
    buildInputs =
      (self.nativeDeps."ini" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ini" ];
  };
  by-spec."intersect"."^1.0.1" =
    self.by-version."intersect"."1.0.1";
  by-version."intersect"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "intersect-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/intersect/-/intersect-1.0.1.tgz";
        name = "intersect-1.0.1.tgz";
        sha1 = "332650e10854d8c0ac58c192bdc27a8bf7e7a30c";
      })
    ];
    buildInputs =
      (self.nativeDeps."intersect" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "intersect" ];
  };
  by-spec."is-arrayish"."^0.2.1" =
    self.by-version."is-arrayish"."0.2.1";
  by-version."is-arrayish"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "is-arrayish-0.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz";
        name = "is-arrayish-0.2.1.tgz";
        sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-arrayish" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-arrayish" ];
  };
  by-spec."is-builtin-module"."^1.0.0" =
    self.by-version."is-builtin-module"."1.0.0";
  by-version."is-builtin-module"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-builtin-module-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
        name = "is-builtin-module-1.0.0.tgz";
        sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-builtin-module" or []);
    deps = {
      "builtin-modules-1.1.1" = self.by-version."builtin-modules"."1.1.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-builtin-module" ];
  };
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.1";
  by-version."is-finite"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "is-finite-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-finite/-/is-finite-1.0.1.tgz";
        name = "is-finite-1.0.1.tgz";
        sha1 = "6438603eaebe2793948ff4a4262ec8db3d62597b";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-finite" or []);
    deps = {
      "number-is-nan-1.0.0" = self.by-version."number-is-nan"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-finite" ];
  };
  by-spec."is-my-json-valid"."^2.12.4" =
    self.by-version."is-my-json-valid"."2.13.1";
  by-version."is-my-json-valid"."2.13.1" = lib.makeOverridable self.buildNodePackage {
    name = "is-my-json-valid-2.13.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.13.1.tgz";
        name = "is-my-json-valid-2.13.1.tgz";
        sha1 = "d55778a82feb6b0963ff4be111d5d1684e890707";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-my-json-valid" or []);
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-2.0.0" = self.by-version."jsonpointer"."2.0.0";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-my-json-valid" ];
  };
  by-spec."is-npm"."^1.0.0" =
    self.by-version."is-npm"."1.0.0";
  by-version."is-npm"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-npm-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-npm/-/is-npm-1.0.0.tgz";
        name = "is-npm-1.0.0.tgz";
        sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-npm" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-npm" ];
  };
  by-spec."is-plain-obj"."^1.0.0" =
    self.by-version."is-plain-obj"."1.1.0";
  by-version."is-plain-obj"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-plain-obj-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
        name = "is-plain-obj-1.1.0.tgz";
        sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-plain-obj" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-plain-obj" ];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "is-property-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
        name = "is-property-1.0.2.tgz";
        sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-property" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-property" ];
  };
  by-spec."is-redirect"."^1.0.0" =
    self.by-version."is-redirect"."1.0.0";
  by-version."is-redirect"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-redirect-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-redirect/-/is-redirect-1.0.0.tgz";
        name = "is-redirect-1.0.0.tgz";
        sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-redirect" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-redirect" ];
  };
  by-spec."is-stream"."^1.0.0" =
    self.by-version."is-stream"."1.1.0";
  by-version."is-stream"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-stream-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz";
        name = "is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-stream" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-stream" ];
  };
  by-spec."is-typedarray"."~1.0.0" =
    self.by-version."is-typedarray"."1.0.0";
  by-version."is-typedarray"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "is-typedarray-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
        name = "is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-typedarray" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-typedarray" ];
  };
  by-spec."is-utf8"."^0.2.0" =
    self.by-version."is-utf8"."0.2.1";
  by-version."is-utf8"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "is-utf8-0.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz";
        name = "is-utf8-0.2.1.tgz";
        sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
      })
    ];
    buildInputs =
      (self.nativeDeps."is-utf8" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "is-utf8" ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "isarray-0.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
        name = "isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      })
    ];
    buildInputs =
      (self.nativeDeps."isarray" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "isarray" ];
  };
  by-spec."isarray"."~1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "isarray-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        name = "isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      })
    ];
    buildInputs =
      (self.nativeDeps."isarray" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "isarray" ];
  };
  by-spec."isemail"."1.x.x" =
    self.by-version."isemail"."1.2.0";
  by-version."isemail"."1.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "isemail-1.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/isemail/-/isemail-1.2.0.tgz";
        name = "isemail-1.2.0.tgz";
        sha1 = "be03df8cc3e29de4d2c5df6501263f1fa4595e9a";
      })
    ];
    buildInputs =
      (self.nativeDeps."isemail" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "isemail" ];
  };
  by-spec."isstream"."~0.1.2" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "isstream-0.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
        name = "isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      })
    ];
    buildInputs =
      (self.nativeDeps."isstream" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "isstream" ];
  };
  by-spec."jodid25519"."^1.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "jodid25519-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
        name = "jodid25519-1.0.2.tgz";
        sha1 = "06d4912255093419477d425633606e0e90782967";
      })
    ];
    buildInputs =
      (self.nativeDeps."jodid25519" or []);
    deps = {
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "jodid25519" ];
  };
  by-spec."joi"."^4.0.0" =
    self.by-version."joi"."4.9.0";
  by-version."joi"."4.9.0" = lib.makeOverridable self.buildNodePackage {
    name = "joi-4.9.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/joi/-/joi-4.9.0.tgz";
        name = "joi-4.9.0.tgz";
        sha1 = "2355023363089ca01bc1fd079e72949f977baada";
      })
    ];
    buildInputs =
      (self.nativeDeps."joi" or []);
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "topo-1.1.0" = self.by-version."topo"."1.1.0";
      "isemail-1.2.0" = self.by-version."isemail"."1.2.0";
      "moment-2.14.1" = self.by-version."moment"."2.14.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "joi" ];
  };
  by-spec."joi"."^4.7.0" =
    self.by-version."joi"."4.9.0";
  by-spec."joi-assert"."0.0.3" =
    self.by-version."joi-assert"."0.0.3";
  by-version."joi-assert"."0.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "joi-assert-0.0.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/joi-assert/-/joi-assert-0.0.3.tgz";
        name = "joi-assert-0.0.3.tgz";
        sha1 = "77291376ac3f0b124f433f98db74b4f20f686fd6";
      })
    ];
    buildInputs =
      (self.nativeDeps."joi-assert" or []);
    deps = {
      "assertion-error-1.0.2" = self.by-version."assertion-error"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "joi-assert" ];
  };
  by-spec."js-yaml"."^3.1.0" =
    self.by-version."js-yaml"."3.6.1";
  by-version."js-yaml"."3.6.1" = lib.makeOverridable self.buildNodePackage {
    name = "js-yaml-3.6.1";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/js-yaml/-/js-yaml-3.6.1.tgz";
        name = "js-yaml-3.6.1.tgz";
        sha1 = "6e5fe67d8b205ce4d22fad05b7781e8dadcc4b30";
      })
    ];
    buildInputs =
      (self.nativeDeps."js-yaml" or []);
    deps = {
      "argparse-1.0.7" = self.by-version."argparse"."1.0.7";
      "esprima-2.7.2" = self.by-version."esprima"."2.7.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "js-yaml" ];
  };
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.0";
  by-version."jsbn"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "jsbn-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.0.tgz";
        name = "jsbn-0.1.0.tgz";
        sha1 = "650987da0dd74f4ebf5a11377a2aa2d273e97dfd";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsbn" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "jsbn" ];
  };
  by-spec."jsesc"."^0.5.0" =
    self.by-version."jsesc"."0.5.0";
  by-version."jsesc"."0.5.0" = lib.makeOverridable self.buildNodePackage {
    name = "jsesc-0.5.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
        name = "jsesc-0.5.0.tgz";
        sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsesc" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "jsesc" ];
  };
  by-spec."json-pointer"."^0.2.2" =
    self.by-version."json-pointer"."0.2.2";
  by-version."json-pointer"."0.2.2" = lib.makeOverridable self.buildNodePackage {
    name = "json-pointer-0.2.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/json-pointer/-/json-pointer-0.2.2.tgz";
        name = "json-pointer-0.2.2.tgz";
        sha1 = "1a78285d4650c50b10475f7f59919a99db8a164b";
      })
    ];
    buildInputs =
      (self.nativeDeps."json-pointer" or []);
    deps = {
      "foreach-2.0.5" = self.by-version."foreach"."2.0.5";
    };
    peerDependencies = [
    ];
    passthru.names = [ "json-pointer" ];
  };
  by-spec."json-schema"."0.2.2" =
    self.by-version."json-schema"."0.2.2";
  by-version."json-schema"."0.2.2" = lib.makeOverridable self.buildNodePackage {
    name = "json-schema-0.2.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.2.tgz";
        name = "json-schema-0.2.2.tgz";
        sha1 = "50354f19f603917c695f70b85afa77c3b0f23506";
      })
    ];
    buildInputs =
      (self.nativeDeps."json-schema" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "json-schema" ];
  };
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        name = "json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      })
    ];
    buildInputs =
      (self.nativeDeps."json-stringify-safe" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "json-stringify-safe" ];
  };
  by-spec."jsonfile"."^2.1.0" =
    self.by-version."jsonfile"."2.3.1";
  by-version."jsonfile"."2.3.1" = lib.makeOverridable self.buildNodePackage {
    name = "jsonfile-2.3.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jsonfile/-/jsonfile-2.3.1.tgz";
        name = "jsonfile-2.3.1.tgz";
        sha1 = "28bcb29c596b5b7aafd34e662a329ba62cd842fc";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsonfile" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "jsonfile" ];
  };
  by-spec."jsonpointer"."2.0.0" =
    self.by-version."jsonpointer"."2.0.0";
  by-version."jsonpointer"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "jsonpointer-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-2.0.0.tgz";
        name = "jsonpointer-2.0.0.tgz";
        sha1 = "3af1dd20fe85463910d469a385e33017d2a030d9";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsonpointer" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "jsonpointer" ];
  };
  by-spec."jsprim"."^1.2.2" =
    self.by-version."jsprim"."1.3.0";
  by-version."jsprim"."1.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "jsprim-1.3.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/jsprim/-/jsprim-1.3.0.tgz";
        name = "jsprim-1.3.0.tgz";
        sha1 = "ce2e1bef835204b4f3099928c602f8b6ae615650";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsprim" or []);
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
      "json-schema-0.2.2" = self.by-version."json-schema"."0.2.2";
      "verror-1.3.6" = self.by-version."verror"."1.3.6";
    };
    peerDependencies = [
    ];
    passthru.names = [ "jsprim" ];
  };
  by-spec."klaw"."^1.0.0" =
    self.by-version."klaw"."1.3.0";
  by-version."klaw"."1.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "klaw-1.3.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/klaw/-/klaw-1.3.0.tgz";
        name = "klaw-1.3.0.tgz";
        sha1 = "8857bfbc1d824badf13d3d0241d8bbe46fb12f73";
      })
    ];
    buildInputs =
      (self.nativeDeps."klaw" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "klaw" ];
  };
  by-spec."latest-version"."^1.0.0" =
    self.by-version."latest-version"."1.0.1";
  by-version."latest-version"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "latest-version-1.0.1";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/latest-version/-/latest-version-1.0.1.tgz";
        name = "latest-version-1.0.1.tgz";
        sha1 = "72cfc46e3e8d1be651e1ebb54ea9f6ea96f374bb";
      })
    ];
    buildInputs =
      (self.nativeDeps."latest-version" or []);
    deps = {
      "package-json-1.2.0" = self.by-version."package-json"."1.2.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "latest-version" ];
  };
  by-spec."lazy.js"."~0.3.2" =
    self.by-version."lazy.js"."0.3.2";
  by-version."lazy.js"."0.3.2" = lib.makeOverridable self.buildNodePackage {
    name = "lazy.js-0.3.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lazy.js/-/lazy.js-0.3.2.tgz";
        name = "lazy.js-0.3.2.tgz";
        sha1 = "7cc1107e5f809ae70498f511dd180e1f80b4efa9";
      })
    ];
    buildInputs =
      (self.nativeDeps."lazy.js" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lazy.js" ];
  };
  by-spec."load-json-file"."^1.0.0" =
    self.by-version."load-json-file"."1.1.0";
  by-version."load-json-file"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "load-json-file-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz";
        name = "load-json-file-1.1.0.tgz";
        sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
      })
    ];
    buildInputs =
      (self.nativeDeps."load-json-file" or []);
    deps = {
      "graceful-fs-4.1.6" = self.by-version."graceful-fs"."4.1.6";
      "parse-json-2.2.0" = self.by-version."parse-json"."2.2.0";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
      "strip-bom-2.0.0" = self.by-version."strip-bom"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "load-json-file" ];
  };
  by-spec."lodash".">= 4.0.0 < 5.0.0" =
    self.by-version."lodash"."4.15.0";
  by-version."lodash"."4.15.0" = lib.makeOverridable self.buildNodePackage {
    name = "lodash-4.15.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.15.0.tgz";
        name = "lodash-4.15.0.tgz";
        sha1 = "3162391d8f0140aa22cf8f6b3c34d6b7f63d3aa9";
      })
    ];
    buildInputs =
      (self.nativeDeps."lodash" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lodash" ];
  };
  by-spec."lodash"."~4.2.1" =
    self.by-version."lodash"."4.2.1";
  by-version."lodash"."4.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "lodash-4.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.2.1.tgz";
        name = "lodash-4.2.1.tgz";
        sha1 = "171fdcfbbc30d689c544cd18c0529f56de6c1aa9";
      })
    ];
    buildInputs =
      (self.nativeDeps."lodash" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lodash" ];
  };
  "lodash" = self.by-version."lodash"."4.2.1";
  by-spec."loud-rejection"."^1.0.0" =
    self.by-version."loud-rejection"."1.6.0";
  by-version."loud-rejection"."1.6.0" = lib.makeOverridable self.buildNodePackage {
    name = "loud-rejection-1.6.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.6.0.tgz";
        name = "loud-rejection-1.6.0.tgz";
        sha1 = "5b46f80147edee578870f086d04821cf998e551f";
      })
    ];
    buildInputs =
      (self.nativeDeps."loud-rejection" or []);
    deps = {
      "currently-unhandled-0.4.1" = self.by-version."currently-unhandled"."0.4.1";
      "signal-exit-3.0.0" = self.by-version."signal-exit"."3.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "loud-rejection" ];
  };
  by-spec."lowercase-keys"."^1.0.0" =
    self.by-version."lowercase-keys"."1.0.0";
  by-version."lowercase-keys"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "lowercase-keys-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
        name = "lowercase-keys-1.0.0.tgz";
        sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
      })
    ];
    buildInputs =
      (self.nativeDeps."lowercase-keys" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lowercase-keys" ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.3";
  by-version."lru-cache"."2.7.3" = lib.makeOverridable self.buildNodePackage {
    name = "lru-cache-2.7.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
        name = "lru-cache-2.7.3.tgz";
        sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
      })
    ];
    buildInputs =
      (self.nativeDeps."lru-cache" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lru-cache" ];
  };
  by-spec."lru-cache"."~2.5.0" =
    self.by-version."lru-cache"."2.5.2";
  by-version."lru-cache"."2.5.2" = lib.makeOverridable self.buildNodePackage {
    name = "lru-cache-2.5.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.5.2.tgz";
        name = "lru-cache-2.5.2.tgz";
        sha1 = "1fddad938aae1263ce138680be1b3f591c0ab41c";
      })
    ];
    buildInputs =
      (self.nativeDeps."lru-cache" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "lru-cache" ];
  };
  by-spec."map-obj"."^1.0.0" =
    self.by-version."map-obj"."1.0.1";
  by-version."map-obj"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "map-obj-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz";
        name = "map-obj-1.0.1.tgz";
        sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
      })
    ];
    buildInputs =
      (self.nativeDeps."map-obj" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "map-obj" ];
  };
  by-spec."map-obj"."^1.0.1" =
    self.by-version."map-obj"."1.0.1";
  by-spec."map-stream"."~0.1.0" =
    self.by-version."map-stream"."0.1.0";
  by-version."map-stream"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "map-stream-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/map-stream/-/map-stream-0.1.0.tgz";
        name = "map-stream-0.1.0.tgz";
        sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
      })
    ];
    buildInputs =
      (self.nativeDeps."map-stream" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "map-stream" ];
  };
  by-spec."meow"."^3.1.0" =
    self.by-version."meow"."3.7.0";
  by-version."meow"."3.7.0" = lib.makeOverridable self.buildNodePackage {
    name = "meow-3.7.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/meow/-/meow-3.7.0.tgz";
        name = "meow-3.7.0.tgz";
        sha1 = "72cb668b425228290abbfa856892587308a801fb";
      })
    ];
    buildInputs =
      (self.nativeDeps."meow" or []);
    deps = {
      "camelcase-keys-2.1.0" = self.by-version."camelcase-keys"."2.1.0";
      "decamelize-1.2.0" = self.by-version."decamelize"."1.2.0";
      "loud-rejection-1.6.0" = self.by-version."loud-rejection"."1.6.0";
      "map-obj-1.0.1" = self.by-version."map-obj"."1.0.1";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "object-assign-4.1.0" = self.by-version."object-assign"."4.1.0";
      "read-pkg-up-1.0.1" = self.by-version."read-pkg-up"."1.0.1";
      "redent-1.0.0" = self.by-version."redent"."1.0.0";
      "trim-newlines-1.0.0" = self.by-version."trim-newlines"."1.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "meow" ];
  };
  by-spec."mime-db"."~1.23.0" =
    self.by-version."mime-db"."1.23.0";
  by-version."mime-db"."1.23.0" = lib.makeOverridable self.buildNodePackage {
    name = "mime-db-1.23.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.23.0.tgz";
        name = "mime-db-1.23.0.tgz";
        sha1 = "a31b4070adaea27d732ea333740a64d0ec9a6659";
      })
    ];
    buildInputs =
      (self.nativeDeps."mime-db" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "mime-db" ];
  };
  by-spec."mime-types"."^2.1.10" =
    self.by-version."mime-types"."2.1.11";
  by-version."mime-types"."2.1.11" = lib.makeOverridable self.buildNodePackage {
    name = "mime-types-2.1.11";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.11.tgz";
        name = "mime-types-2.1.11.tgz";
        sha1 = "c259c471bda808a85d6cd193b430a5fae4473b3c";
      })
    ];
    buildInputs =
      (self.nativeDeps."mime-types" or []);
    deps = {
      "mime-db-1.23.0" = self.by-version."mime-db"."1.23.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "mime-types" ];
  };
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.11";
  by-spec."minichain"."~0.0.1" =
    self.by-version."minichain"."0.0.1";
  by-version."minichain"."0.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "minichain-0.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minichain/-/minichain-0.0.1.tgz";
        name = "minichain-0.0.1.tgz";
        sha1 = "0bae49774170d8931401c271bb6ed6d3992a9f52";
      })
    ];
    buildInputs =
      (self.nativeDeps."minichain" or []);
    deps = {
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "minichain" ];
  };
  by-spec."minimatch"."2 || 3" =
    self.by-version."minimatch"."3.0.3";
  by-version."minimatch"."3.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "minimatch-3.0.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.3.tgz";
        name = "minimatch-3.0.3.tgz";
        sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimatch" or []);
    deps = {
      "brace-expansion-1.1.6" = self.by-version."brace-expansion"."1.1.6";
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimatch" ];
  };
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "minimatch-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
        name = "minimatch-1.0.0.tgz";
        sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimatch" or []);
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimatch" ];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.10";
  by-version."minimatch"."2.0.10" = lib.makeOverridable self.buildNodePackage {
    name = "minimatch-2.0.10";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
        name = "minimatch-2.0.10.tgz";
        sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimatch" or []);
    deps = {
      "brace-expansion-1.1.6" = self.by-version."brace-expansion"."1.1.6";
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimatch" ];
  };
  by-spec."minimatch"."^3.0.2" =
    self.by-version."minimatch"."3.0.3";
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = lib.makeOverridable self.buildNodePackage {
    name = "minimist-0.0.8";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
        name = "minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimist" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimist" ];
  };
  by-spec."minimist"."^0.1.0" =
    self.by-version."minimist"."0.1.0";
  by-version."minimist"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "minimist-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-0.1.0.tgz";
        name = "minimist-0.1.0.tgz";
        sha1 = "99df657a52574c21c9057497df742790b2b4c0de";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimist" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimist" ];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.2.0";
  by-version."minimist"."1.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "minimist-1.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
        name = "minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      })
    ];
    buildInputs =
      (self.nativeDeps."minimist" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "minimist" ];
  };
  by-spec."minimist"."^1.1.3" =
    self.by-version."minimist"."1.2.0";
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."ministyle".">=0.1.2-0 >=0.1.3-0 <0.2.0-0" =
    self.by-version."ministyle"."0.1.4";
  by-version."ministyle"."0.1.4" = lib.makeOverridable self.buildNodePackage {
    name = "ministyle-0.1.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ministyle/-/ministyle-0.1.4.tgz";
        name = "ministyle-0.1.4.tgz";
        sha1 = "b10481eb16aa8f7b6cd983817393a44da0e5a0cd";
      })
    ];
    buildInputs =
      (self.nativeDeps."ministyle" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ministyle" ];
  };
  by-spec."ministyle"."~0.1.2" =
    self.by-version."ministyle"."0.1.4";
  by-spec."ministyle"."~0.1.3" =
    self.by-version."ministyle"."0.1.4";
  by-spec."minitable"."0.0.4" =
    self.by-version."minitable"."0.0.4";
  by-version."minitable"."0.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "minitable-0.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/minitable/-/minitable-0.0.4.tgz";
        name = "minitable-0.0.4.tgz";
        sha1 = "8d61cb78fae6f371d8051ce77e8a7831ce3d5396";
      })
    ];
    buildInputs =
      (self.nativeDeps."minitable" or []);
    deps = {
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
      "minichain-0.0.1" = self.by-version."minichain"."0.0.1";
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "minitable" ];
  };
  by-spec."miniwrite"."~0.1.2" =
    self.by-version."miniwrite"."0.1.4";
  by-version."miniwrite"."0.1.4" = lib.makeOverridable self.buildNodePackage {
    name = "miniwrite-0.1.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/miniwrite/-/miniwrite-0.1.4.tgz";
        name = "miniwrite-0.1.4.tgz";
        sha1 = "72f02385c0ac37d542efe27dc6764b31908725ce";
      })
    ];
    buildInputs =
      (self.nativeDeps."miniwrite" or []);
    deps = {
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    peerDependencies = [
    ];
    passthru.names = [ "miniwrite" ];
  };
  by-spec."miniwrite"."~0.1.3" =
    self.by-version."miniwrite"."0.1.4";
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = lib.makeOverridable self.buildNodePackage {
    name = "mkdirp-0.5.1";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        name = "mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      })
    ];
    buildInputs =
      (self.nativeDeps."mkdirp" or []);
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    peerDependencies = [
    ];
    passthru.names = [ "mkdirp" ];
  };
  by-spec."mkdirp"."~0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = lib.makeOverridable self.buildNodePackage {
    name = "mkdirp-0.3.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
        name = "mkdirp-0.3.5.tgz";
        sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
      })
    ];
    buildInputs =
      (self.nativeDeps."mkdirp" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "mkdirp" ];
  };
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."moment"."2.x.x" =
    self.by-version."moment"."2.14.1";
  by-version."moment"."2.14.1" = lib.makeOverridable self.buildNodePackage {
    name = "moment-2.14.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/moment/-/moment-2.14.1.tgz";
        name = "moment-2.14.1.tgz";
        sha1 = "b35b27c47e57ed2ddc70053d6b07becdb291741c";
      })
    ];
    buildInputs =
      (self.nativeDeps."moment" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "moment" ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = lib.makeOverridable self.buildNodePackage {
    name = "ms-0.7.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
        name = "ms-0.7.1.tgz";
        sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
      })
    ];
    buildInputs =
      (self.nativeDeps."ms" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "ms" ];
  };
  by-spec."natives"."^1.0.1" =
    self.by-version."natives"."1.0.2";
  by-version."natives"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "natives-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/natives/-/natives-1.0.2.tgz";
        name = "natives-1.0.2.tgz";
        sha1 = "0b2342e2d5b1cf411307c80124b4113d7897d1a6";
      })
    ];
    buildInputs =
      (self.nativeDeps."natives" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "natives" ];
  };
  by-spec."nested-error-stacks"."^1.0.0" =
    self.by-version."nested-error-stacks"."1.0.2";
  by-version."nested-error-stacks"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "nested-error-stacks-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/nested-error-stacks/-/nested-error-stacks-1.0.2.tgz";
        name = "nested-error-stacks-1.0.2.tgz";
        sha1 = "19f619591519f096769a5ba9a86e6eeec823c3cf";
      })
    ];
    buildInputs =
      (self.nativeDeps."nested-error-stacks" or []);
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "nested-error-stacks" ];
  };
  by-spec."node-uuid"."1.x" =
    self.by-version."node-uuid"."1.4.7";
  by-version."node-uuid"."1.4.7" = lib.makeOverridable self.buildNodePackage {
    name = "node-uuid-1.4.7";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/node-uuid/-/node-uuid-1.4.7.tgz";
        name = "node-uuid-1.4.7.tgz";
        sha1 = "6da5a17668c4b3dd59623bda11cf7fa4c1f60a6f";
      })
    ];
    buildInputs =
      (self.nativeDeps."node-uuid" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "node-uuid" ];
  };
  by-spec."node-uuid"."~1.4.7" =
    self.by-version."node-uuid"."1.4.7";
  by-spec."normalize-package-data"."^2.3.2" =
    self.by-version."normalize-package-data"."2.3.5";
  by-version."normalize-package-data"."2.3.5" = lib.makeOverridable self.buildNodePackage {
    name = "normalize-package-data-2.3.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.3.5.tgz";
        name = "normalize-package-data-2.3.5.tgz";
        sha1 = "8d924f142960e1777e7ffe170543631cc7cb02df";
      })
    ];
    buildInputs =
      (self.nativeDeps."normalize-package-data" or []);
    deps = {
      "hosted-git-info-2.1.5" = self.by-version."hosted-git-info"."2.1.5";
      "is-builtin-module-1.0.0" = self.by-version."is-builtin-module"."1.0.0";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "validate-npm-package-license-3.0.1" = self.by-version."validate-npm-package-license"."3.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "normalize-package-data" ];
  };
  by-spec."normalize-package-data"."^2.3.4" =
    self.by-version."normalize-package-data"."2.3.5";
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.0";
  by-version."number-is-nan"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "number-is-nan-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.0.tgz";
        name = "number-is-nan-1.0.0.tgz";
        sha1 = "c020f529c5282adfdd233d91d4b181c3d686dc4b";
      })
    ];
    buildInputs =
      (self.nativeDeps."number-is-nan" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "number-is-nan" ];
  };
  by-spec."oauth-sign"."~0.8.1" =
    self.by-version."oauth-sign"."0.8.2";
  by-version."oauth-sign"."0.8.2" = lib.makeOverridable self.buildNodePackage {
    name = "oauth-sign-0.8.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz";
        name = "oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      })
    ];
    buildInputs =
      (self.nativeDeps."oauth-sign" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "oauth-sign" ];
  };
  by-spec."object-assign"."^2.0.0" =
    self.by-version."object-assign"."2.1.1";
  by-version."object-assign"."2.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "object-assign-2.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-2.1.1.tgz";
        name = "object-assign-2.1.1.tgz";
        sha1 = "43c36e5d569ff8e4816c4efa8be02d26967c18aa";
      })
    ];
    buildInputs =
      (self.nativeDeps."object-assign" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "object-assign" ];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "object-assign-3.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
        name = "object-assign-3.0.0.tgz";
        sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
      })
    ];
    buildInputs =
      (self.nativeDeps."object-assign" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "object-assign" ];
  };
  by-spec."object-assign"."^4.0.1" =
    self.by-version."object-assign"."4.1.0";
  by-version."object-assign"."4.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "object-assign-4.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.0.tgz";
        name = "object-assign-4.1.0.tgz";
        sha1 = "7a3b3d0e98063d43f4c03f2e8ae6cd51a86883a0";
      })
    ];
    buildInputs =
      (self.nativeDeps."object-assign" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "object-assign" ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.3";
  by-version."once"."1.3.3" = lib.makeOverridable self.buildNodePackage {
    name = "once-1.3.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.3.3.tgz";
        name = "once-1.3.3.tgz";
        sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
      })
    ];
    buildInputs =
      (self.nativeDeps."once" or []);
    deps = {
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "once" ];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.3";
  by-spec."open"."~0.0.5" =
    self.by-version."open"."0.0.5";
  by-version."open"."0.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "open-0.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/open/-/open-0.0.5.tgz";
        name = "open-0.0.5.tgz";
        sha1 = "42c3e18ec95466b6bf0dc42f3a2945c3f0cad8fc";
      })
    ];
    buildInputs =
      (self.nativeDeps."open" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "open" ];
  };
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.1";
  by-version."os-homedir"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "os-homedir-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.1.tgz";
        name = "os-homedir-1.0.1.tgz";
        sha1 = "0d62bdf44b916fd3bbdcf2cab191948fb094f007";
      })
    ];
    buildInputs =
      (self.nativeDeps."os-homedir" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "os-homedir" ];
  };
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
        name = "os-tmpdir-1.0.1.tgz";
        sha1 = "e9b423a1edaf479882562e92ed71d7743a071b6e";
      })
    ];
    buildInputs =
      (self.nativeDeps."os-tmpdir" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "os-tmpdir" ];
  };
  by-spec."osenv"."^0.1.0" =
    self.by-version."osenv"."0.1.3";
  by-version."osenv"."0.1.3" = lib.makeOverridable self.buildNodePackage {
    name = "osenv-0.1.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/osenv/-/osenv-0.1.3.tgz";
        name = "osenv-0.1.3.tgz";
        sha1 = "83cf05c6d6458fc4d5ac6362ea325d92f2754217";
      })
    ];
    buildInputs =
      (self.nativeDeps."osenv" or []);
    deps = {
      "os-homedir-1.0.1" = self.by-version."os-homedir"."1.0.1";
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "osenv" ];
  };
  by-spec."package-json"."^1.0.0" =
    self.by-version."package-json"."1.2.0";
  by-version."package-json"."1.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "package-json-1.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/package-json/-/package-json-1.2.0.tgz";
        name = "package-json-1.2.0.tgz";
        sha1 = "c8ecac094227cdf76a316874ed05e27cc939a0e0";
      })
    ];
    buildInputs =
      (self.nativeDeps."package-json" or []);
    deps = {
      "got-3.3.1" = self.by-version."got"."3.3.1";
      "registry-url-3.1.0" = self.by-version."registry-url"."3.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "package-json" ];
  };
  by-spec."parse-json"."^2.2.0" =
    self.by-version."parse-json"."2.2.0";
  by-version."parse-json"."2.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "parse-json-2.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz";
        name = "parse-json-2.2.0.tgz";
        sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
      })
    ];
    buildInputs =
      (self.nativeDeps."parse-json" or []);
    deps = {
      "error-ex-1.3.0" = self.by-version."error-ex"."1.3.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "parse-json" ];
  };
  by-spec."parsimmon"."^0.5.0" =
    self.by-version."parsimmon"."0.5.1";
  by-version."parsimmon"."0.5.1" = lib.makeOverridable self.buildNodePackage {
    name = "parsimmon-0.5.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/parsimmon/-/parsimmon-0.5.1.tgz";
        name = "parsimmon-0.5.1.tgz";
        sha1 = "247c970d7d5e99a51115b16a106de96f0eb9303b";
      })
    ];
    buildInputs =
      (self.nativeDeps."parsimmon" or []);
    deps = {
      "pjs-5.1.1" = self.by-version."pjs"."5.1.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "parsimmon" ];
  };
  by-spec."path-exists"."^2.0.0" =
    self.by-version."path-exists"."2.1.0";
  by-version."path-exists"."2.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "path-exists-2.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz";
        name = "path-exists-2.1.0.tgz";
        sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
      })
    ];
    buildInputs =
      (self.nativeDeps."path-exists" or []);
    deps = {
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "path-exists" ];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.0";
  by-version."path-is-absolute"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "path-is-absolute-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.0.tgz";
        name = "path-is-absolute-1.0.0.tgz";
        sha1 = "263dada66ab3f2fb10bf7f9d24dd8f3e570ef912";
      })
    ];
    buildInputs =
      (self.nativeDeps."path-is-absolute" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "path-is-absolute" ];
  };
  by-spec."path-type"."^1.0.0" =
    self.by-version."path-type"."1.1.0";
  by-version."path-type"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "path-type-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz";
        name = "path-type-1.1.0.tgz";
        sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
      })
    ];
    buildInputs =
      (self.nativeDeps."path-type" or []);
    deps = {
      "graceful-fs-4.1.6" = self.by-version."graceful-fs"."4.1.6";
      "pify-2.3.0" = self.by-version."pify"."2.3.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "path-type" ];
  };
  by-spec."pause-stream"."0.0.11" =
    self.by-version."pause-stream"."0.0.11";
  by-version."pause-stream"."0.0.11" = lib.makeOverridable self.buildNodePackage {
    name = "pause-stream-0.0.11";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/pause-stream/-/pause-stream-0.0.11.tgz";
        name = "pause-stream-0.0.11.tgz";
        sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
      })
    ];
    buildInputs =
      (self.nativeDeps."pause-stream" or []);
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    peerDependencies = [
    ];
    passthru.names = [ "pause-stream" ];
  };
  by-spec."pify"."^2.0.0" =
    self.by-version."pify"."2.3.0";
  by-version."pify"."2.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "pify-2.3.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
        name = "pify-2.3.0.tgz";
        sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
      })
    ];
    buildInputs =
      (self.nativeDeps."pify" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "pify" ];
  };
  by-spec."pinkie"."^2.0.0" =
    self.by-version."pinkie"."2.0.4";
  by-version."pinkie"."2.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "pinkie-2.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz";
        name = "pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      })
    ];
    buildInputs =
      (self.nativeDeps."pinkie" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "pinkie" ];
  };
  by-spec."pinkie-promise"."^2.0.0" =
    self.by-version."pinkie-promise"."2.0.1";
  by-version."pinkie-promise"."2.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "pinkie-promise-2.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        name = "pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      })
    ];
    buildInputs =
      (self.nativeDeps."pinkie-promise" or []);
    deps = {
      "pinkie-2.0.4" = self.by-version."pinkie"."2.0.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "pinkie-promise" ];
  };
  by-spec."pjs"."5.x" =
    self.by-version."pjs"."5.1.1";
  by-version."pjs"."5.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "pjs-5.1.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/pjs/-/pjs-5.1.1.tgz";
        name = "pjs-5.1.1.tgz";
        sha1 = "9dfc4673bb01deffd6915fb1dec75827aba42abf";
      })
    ];
    buildInputs =
      (self.nativeDeps."pjs" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "pjs" ];
  };
  by-spec."prepend-http"."^1.0.0" =
    self.by-version."prepend-http"."1.0.4";
  by-version."prepend-http"."1.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "prepend-http-1.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/prepend-http/-/prepend-http-1.0.4.tgz";
        name = "prepend-http-1.0.4.tgz";
        sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
      })
    ];
    buildInputs =
      (self.nativeDeps."prepend-http" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "prepend-http" ];
  };
  by-spec."process-nextick-args"."~1.0.6" =
    self.by-version."process-nextick-args"."1.0.7";
  by-version."process-nextick-args"."1.0.7" = lib.makeOverridable self.buildNodePackage {
    name = "process-nextick-args-1.0.7";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        name = "process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      })
    ];
    buildInputs =
      (self.nativeDeps."process-nextick-args" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "process-nextick-args" ];
  };
  by-spec."promised-temp"."^0.1.0" =
    self.by-version."promised-temp"."0.1.0";
  by-version."promised-temp"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "promised-temp-0.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/promised-temp/-/promised-temp-0.1.0.tgz";
        name = "promised-temp-0.1.0.tgz";
        sha1 = "5f8a704ccdf5f2ac23996fcafe2b301bc2a8d0eb";
      })
    ];
    buildInputs =
      (self.nativeDeps."promised-temp" or []);
    deps = {
      "temp-0.8.3" = self.by-version."temp"."0.8.3";
      "q-1.4.1" = self.by-version."q"."1.4.1";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "promised-temp" ];
  };
  "promised-temp" = self.by-version."promised-temp"."0.1.0";
  by-spec."q"."^1.0.1" =
    self.by-version."q"."1.4.1";
  by-version."q"."1.4.1" = lib.makeOverridable self.buildNodePackage {
    name = "q-1.4.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/q/-/q-1.4.1.tgz";
        name = "q-1.4.1.tgz";
        sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
      })
    ];
    buildInputs =
      (self.nativeDeps."q" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "q" ];
  };
  by-spec."qs"."~6.2.0" =
    self.by-version."qs"."6.2.1";
  by-version."qs"."6.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "qs-6.2.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.2.1.tgz";
        name = "qs-6.2.1.tgz";
        sha1 = "ce03c5ff0935bc1d9d69a9f14cbd18e568d67625";
      })
    ];
    buildInputs =
      (self.nativeDeps."qs" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "qs" ];
  };
  by-spec."rc"."^1.0.1" =
    self.by-version."rc"."1.1.6";
  by-version."rc"."1.1.6" = lib.makeOverridable self.buildNodePackage {
    name = "rc-1.1.6";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/rc/-/rc-1.1.6.tgz";
        name = "rc-1.1.6.tgz";
        sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
      })
    ];
    buildInputs =
      (self.nativeDeps."rc" or []);
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "strip-json-comments-1.0.4" = self.by-version."strip-json-comments"."1.0.4";
    };
    peerDependencies = [
    ];
    passthru.names = [ "rc" ];
  };
  by-spec."read-all-stream"."^2.0.0" =
    self.by-version."read-all-stream"."2.2.0";
  by-version."read-all-stream"."2.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "read-all-stream-2.2.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/read-all-stream/-/read-all-stream-2.2.0.tgz";
        name = "read-all-stream-2.2.0.tgz";
        sha1 = "6b83370546c55ab6ade2bf75e83c66e45989bbf0";
      })
    ];
    buildInputs =
      (self.nativeDeps."read-all-stream" or []);
    deps = {
      "readable-stream-2.1.5" = self.by-version."readable-stream"."2.1.5";
    };
    peerDependencies = [
    ];
    passthru.names = [ "read-all-stream" ];
  };
  by-spec."read-all-stream"."^3.0.0" =
    self.by-version."read-all-stream"."3.1.0";
  by-version."read-all-stream"."3.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "read-all-stream-3.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/read-all-stream/-/read-all-stream-3.1.0.tgz";
        name = "read-all-stream-3.1.0.tgz";
        sha1 = "35c3e177f2078ef789ee4bfafa4373074eaef4fa";
      })
    ];
    buildInputs =
      (self.nativeDeps."read-all-stream" or []);
    deps = {
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
      "readable-stream-2.1.5" = self.by-version."readable-stream"."2.1.5";
    };
    peerDependencies = [
    ];
    passthru.names = [ "read-all-stream" ];
  };
  by-spec."read-pkg"."^1.0.0" =
    self.by-version."read-pkg"."1.1.0";
  by-version."read-pkg"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "read-pkg-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz";
        name = "read-pkg-1.1.0.tgz";
        sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
      })
    ];
    buildInputs =
      (self.nativeDeps."read-pkg" or []);
    deps = {
      "load-json-file-1.1.0" = self.by-version."load-json-file"."1.1.0";
      "normalize-package-data-2.3.5" = self.by-version."normalize-package-data"."2.3.5";
      "path-type-1.1.0" = self.by-version."path-type"."1.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "read-pkg" ];
  };
  by-spec."read-pkg-up"."^1.0.1" =
    self.by-version."read-pkg-up"."1.0.1";
  by-version."read-pkg-up"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "read-pkg-up-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
        name = "read-pkg-up-1.0.1.tgz";
        sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
      })
    ];
    buildInputs =
      (self.nativeDeps."read-pkg-up" or []);
    deps = {
      "find-up-1.1.2" = self.by-version."find-up"."1.1.2";
      "read-pkg-1.1.0" = self.by-version."read-pkg"."1.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "read-pkg-up" ];
  };
  by-spec."readable-stream"."^2.0.0" =
    self.by-version."readable-stream"."2.1.5";
  by-version."readable-stream"."2.1.5" = lib.makeOverridable self.buildNodePackage {
    name = "readable-stream-2.1.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.1.5.tgz";
        name = "readable-stream-2.1.5.tgz";
        sha1 = "66fa8b720e1438b364681f2ad1a63c618448c9d0";
      })
    ];
    buildInputs =
      (self.nativeDeps."readable-stream" or []);
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "readable-stream" ];
  };
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.34";
  by-version."readable-stream"."1.0.34" = lib.makeOverridable self.buildNodePackage {
    name = "readable-stream-1.0.34";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
        name = "readable-stream-1.0.34.tgz";
        sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
      })
    ];
    buildInputs =
      (self.nativeDeps."readable-stream" or []);
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "readable-stream" ];
  };
  by-spec."readable-stream"."~2.0.5" =
    self.by-version."readable-stream"."2.0.6";
  by-version."readable-stream"."2.0.6" = lib.makeOverridable self.buildNodePackage {
    name = "readable-stream-2.0.6";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.0.6.tgz";
        name = "readable-stream-2.0.6.tgz";
        sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
      })
    ];
    buildInputs =
      (self.nativeDeps."readable-stream" or []);
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "readable-stream" ];
  };
  by-spec."redent"."^1.0.0" =
    self.by-version."redent"."1.0.0";
  by-version."redent"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "redent-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/redent/-/redent-1.0.0.tgz";
        name = "redent-1.0.0.tgz";
        sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
      })
    ];
    buildInputs =
      (self.nativeDeps."redent" or []);
    deps = {
      "indent-string-2.1.0" = self.by-version."indent-string"."2.1.0";
      "strip-indent-1.0.1" = self.by-version."strip-indent"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "redent" ];
  };
  by-spec."registry-url"."^3.0.0" =
    self.by-version."registry-url"."3.1.0";
  by-version."registry-url"."3.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "registry-url-3.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/registry-url/-/registry-url-3.1.0.tgz";
        name = "registry-url-3.1.0.tgz";
        sha1 = "3d4ef870f73dde1d77f0cf9a381432444e174942";
      })
    ];
    buildInputs =
      (self.nativeDeps."registry-url" or []);
    deps = {
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
    };
    peerDependencies = [
    ];
    passthru.names = [ "registry-url" ];
  };
  by-spec."repeating"."^2.0.0" =
    self.by-version."repeating"."2.0.1";
  by-version."repeating"."2.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "repeating-2.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz";
        name = "repeating-2.0.1.tgz";
        sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
      })
    ];
    buildInputs =
      (self.nativeDeps."repeating" or []);
    deps = {
      "is-finite-1.0.1" = self.by-version."is-finite"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "repeating" ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.74.0";
  by-version."request"."2.74.0" = lib.makeOverridable self.buildNodePackage {
    name = "request-2.74.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/request/-/request-2.74.0.tgz";
        name = "request-2.74.0.tgz";
        sha1 = "7693ca768bbb0ea5c8ce08c084a45efa05b892ab";
      })
    ];
    buildInputs =
      (self.nativeDeps."request" or []);
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.4.1" = self.by-version."aws4"."1.4.1";
      "bl-1.1.2" = self.by-version."bl"."1.1.2";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-1.0.0-rc4" = self.by-version."form-data"."1.0.0-rc4";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.11" = self.by-version."mime-types"."2.1.11";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "oauth-sign-0.8.2" = self.by-version."oauth-sign"."0.8.2";
      "qs-6.2.1" = self.by-version."qs"."6.2.1";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.3.1" = self.by-version."tough-cookie"."2.3.1";
      "tunnel-agent-0.4.3" = self.by-version."tunnel-agent"."0.4.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "request" ];
  };
  by-spec."request"."^2.45.0" =
    self.by-version."request"."2.74.0";
  by-spec."rimraf"."^2.2.8" =
    self.by-version."rimraf"."2.5.4";
  by-version."rimraf"."2.5.4" = lib.makeOverridable self.buildNodePackage {
    name = "rimraf-2.5.4";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-2.5.4.tgz";
        name = "rimraf-2.5.4.tgz";
        sha1 = "96800093cbf1a0c86bd95b4625467535c29dfa04";
      })
    ];
    buildInputs =
      (self.nativeDeps."rimraf" or []);
    deps = {
      "glob-7.0.5" = self.by-version."glob"."7.0.5";
    };
    peerDependencies = [
    ];
    passthru.names = [ "rimraf" ];
  };
  by-spec."rimraf"."~2.2.6" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = lib.makeOverridable self.buildNodePackage {
    name = "rimraf-2.2.8";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
        name = "rimraf-2.2.8.tgz";
        sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
      })
    ];
    buildInputs =
      (self.nativeDeps."rimraf" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "rimraf" ];
  };
  by-spec."rimraf"."~2.2.8" =
    self.by-version."rimraf"."2.2.8";
  by-spec."semver"."2 || 3 || 4 || 5" =
    self.by-version."semver"."5.3.0";
  by-version."semver"."5.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "semver-5.3.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
        name = "semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      })
    ];
    buildInputs =
      (self.nativeDeps."semver" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "semver" ];
  };
  by-spec."semver".">=5.1.0 <6" =
    self.by-version."semver"."5.3.0";
  "semver" = self.by-version."semver"."5.3.0";
  by-spec."semver"."^4.3.1" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = lib.makeOverridable self.buildNodePackage {
    name = "semver-4.3.6";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
        name = "semver-4.3.6.tgz";
        sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
      })
    ];
    buildInputs =
      (self.nativeDeps."semver" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "semver" ];
  };
  by-spec."semver"."^5.0.3" =
    self.by-version."semver"."5.3.0";
  by-spec."semver-diff"."^2.0.0" =
    self.by-version."semver-diff"."2.1.0";
  by-version."semver-diff"."2.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "semver-diff-2.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/semver-diff/-/semver-diff-2.1.0.tgz";
        name = "semver-diff-2.1.0.tgz";
        sha1 = "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36";
      })
    ];
    buildInputs =
      (self.nativeDeps."semver-diff" or []);
    deps = {
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "semver-diff" ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "sigmund-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
        name = "sigmund-1.0.1.tgz";
        sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
      })
    ];
    buildInputs =
      (self.nativeDeps."sigmund" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "sigmund" ];
  };
  by-spec."signal-exit"."^3.0.0" =
    self.by-version."signal-exit"."3.0.0";
  by-version."signal-exit"."3.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "signal-exit-3.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.0.tgz";
        name = "signal-exit-3.0.0.tgz";
        sha1 = "3c0543b65d7b4fbc60b6cd94593d9bf436739be8";
      })
    ];
    buildInputs =
      (self.nativeDeps."signal-exit" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "signal-exit" ];
  };
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = lib.makeOverridable self.buildNodePackage {
    name = "sntp-1.0.9";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
        name = "sntp-1.0.9.tgz";
        sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
      })
    ];
    buildInputs =
      (self.nativeDeps."sntp" or []);
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "sntp" ];
  };
  by-spec."sort-keys"."^1.0.0" =
    self.by-version."sort-keys"."1.1.2";
  by-version."sort-keys"."1.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "sort-keys-1.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sort-keys/-/sort-keys-1.1.2.tgz";
        name = "sort-keys-1.1.2.tgz";
        sha1 = "441b6d4d346798f1b4e49e8920adfba0e543f9ad";
      })
    ];
    buildInputs =
      (self.nativeDeps."sort-keys" or []);
    deps = {
      "is-plain-obj-1.1.0" = self.by-version."is-plain-obj"."1.1.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "sort-keys" ];
  };
  by-spec."sort-keys-length"."^1.0.0" =
    self.by-version."sort-keys-length"."1.0.1";
  by-version."sort-keys-length"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "sort-keys-length-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sort-keys-length/-/sort-keys-length-1.0.1.tgz";
        name = "sort-keys-length-1.0.1.tgz";
        sha1 = "9cb6f4f4e9e48155a6aa0671edd336ff1479a188";
      })
    ];
    buildInputs =
      (self.nativeDeps."sort-keys-length" or []);
    deps = {
      "sort-keys-1.1.2" = self.by-version."sort-keys"."1.1.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "sort-keys-length" ];
  };
  by-spec."spdx-correct"."~1.0.0" =
    self.by-version."spdx-correct"."1.0.2";
  by-version."spdx-correct"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "spdx-correct-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/spdx-correct/-/spdx-correct-1.0.2.tgz";
        name = "spdx-correct-1.0.2.tgz";
        sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
      })
    ];
    buildInputs =
      (self.nativeDeps."spdx-correct" or []);
    deps = {
      "spdx-license-ids-1.2.2" = self.by-version."spdx-license-ids"."1.2.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "spdx-correct" ];
  };
  by-spec."spdx-exceptions"."^1.0.4" =
    self.by-version."spdx-exceptions"."1.0.5";
  by-version."spdx-exceptions"."1.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "spdx-exceptions-1.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-1.0.5.tgz";
        name = "spdx-exceptions-1.0.5.tgz";
        sha1 = "9d21ac4da4bdb71d060fb74e5a67531d032cbba6";
      })
    ];
    buildInputs =
      (self.nativeDeps."spdx-exceptions" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "spdx-exceptions" ];
  };
  by-spec."spdx-expression-parse"."~1.0.0" =
    self.by-version."spdx-expression-parse"."1.0.2";
  by-version."spdx-expression-parse"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "spdx-expression-parse-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-1.0.2.tgz";
        name = "spdx-expression-parse-1.0.2.tgz";
        sha1 = "d52b14b5e9670771440af225bcb563122ac452f6";
      })
    ];
    buildInputs =
      (self.nativeDeps."spdx-expression-parse" or []);
    deps = {
      "spdx-exceptions-1.0.5" = self.by-version."spdx-exceptions"."1.0.5";
      "spdx-license-ids-1.2.2" = self.by-version."spdx-license-ids"."1.2.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "spdx-expression-parse" ];
  };
  by-spec."spdx-license-ids"."^1.0.0" =
    self.by-version."spdx-license-ids"."1.2.2";
  by-version."spdx-license-ids"."1.2.2" = lib.makeOverridable self.buildNodePackage {
    name = "spdx-license-ids-1.2.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-1.2.2.tgz";
        name = "spdx-license-ids-1.2.2.tgz";
        sha1 = "c9df7a3424594ade6bd11900d596696dc06bac57";
      })
    ];
    buildInputs =
      (self.nativeDeps."spdx-license-ids" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "spdx-license-ids" ];
  };
  by-spec."spdx-license-ids"."^1.0.2" =
    self.by-version."spdx-license-ids"."1.2.2";
  by-spec."split"."0.2" =
    self.by-version."split"."0.2.10";
  by-version."split"."0.2.10" = lib.makeOverridable self.buildNodePackage {
    name = "split-0.2.10";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/split/-/split-0.2.10.tgz";
        name = "split-0.2.10.tgz";
        sha1 = "67097c601d697ce1368f418f06cd201cf0521a57";
      })
    ];
    buildInputs =
      (self.nativeDeps."split" or []);
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    peerDependencies = [
    ];
    passthru.names = [ "split" ];
  };
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.3";
  by-version."sprintf-js"."1.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "sprintf-js-1.0.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz";
        name = "sprintf-js-1.0.3.tgz";
        sha1 = "04e6926f662895354f3dd015203633b857297e2c";
      })
    ];
    buildInputs =
      (self.nativeDeps."sprintf-js" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "sprintf-js" ];
  };
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.9.2";
  by-version."sshpk"."1.9.2" = lib.makeOverridable self.buildNodePackage {
    name = "sshpk-1.9.2";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/sshpk/-/sshpk-1.9.2.tgz";
        name = "sshpk-1.9.2.tgz";
        sha1 = "3b41351bbad5c34ddf4bd8119937efee31a46765";
      })
    ];
    buildInputs =
      (self.nativeDeps."sshpk" or []);
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "dashdash-1.14.0" = self.by-version."dashdash"."1.14.0";
      "getpass-0.1.6" = self.by-version."getpass"."0.1.6";
      "jsbn-0.1.0" = self.by-version."jsbn"."0.1.0";
      "tweetnacl-0.13.3" = self.by-version."tweetnacl"."0.13.3";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "sshpk" ];
  };
  by-spec."statuses"."^1.2.1" =
    self.by-version."statuses"."1.3.0";
  by-version."statuses"."1.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "statuses-1.3.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/statuses/-/statuses-1.3.0.tgz";
        name = "statuses-1.3.0.tgz";
        sha1 = "8e55758cb20e7682c1f4fce8dcab30bf01d1e07a";
      })
    ];
    buildInputs =
      (self.nativeDeps."statuses" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "statuses" ];
  };
  by-spec."stream-combiner"."~0.0.4" =
    self.by-version."stream-combiner"."0.0.4";
  by-version."stream-combiner"."0.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "stream-combiner-0.0.4";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/stream-combiner/-/stream-combiner-0.0.4.tgz";
        name = "stream-combiner-0.0.4.tgz";
        sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
      })
    ];
    buildInputs =
      (self.nativeDeps."stream-combiner" or []);
    deps = {
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "stream-combiner" ];
  };
  by-spec."stream-shift"."^1.0.0" =
    self.by-version."stream-shift"."1.0.0";
  by-version."stream-shift"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "stream-shift-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/stream-shift/-/stream-shift-1.0.0.tgz";
        name = "stream-shift-1.0.0.tgz";
        sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
      })
    ];
    buildInputs =
      (self.nativeDeps."stream-shift" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "stream-shift" ];
  };
  by-spec."string-length"."^1.0.0" =
    self.by-version."string-length"."1.0.1";
  by-version."string-length"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "string-length-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/string-length/-/string-length-1.0.1.tgz";
        name = "string-length-1.0.1.tgz";
        sha1 = "56970fb1c38558e9e70b728bf3de269ac45adfac";
      })
    ];
    buildInputs =
      (self.nativeDeps."string-length" or []);
    deps = {
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "string-length" ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = lib.makeOverridable self.buildNodePackage {
    name = "string_decoder-0.10.31";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
        name = "string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      })
    ];
    buildInputs =
      (self.nativeDeps."string_decoder" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "string_decoder" ];
  };
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.5";
  by-version."stringstream"."0.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "stringstream-0.0.5";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
        name = "stringstream-0.0.5.tgz";
        sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
      })
    ];
    buildInputs =
      (self.nativeDeps."stringstream" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "stringstream" ];
  };
  by-spec."strip-ansi"."^0.3.0" =
    self.by-version."strip-ansi"."0.3.0";
  by-version."strip-ansi"."0.3.0" = lib.makeOverridable self.buildNodePackage {
    name = "strip-ansi-0.3.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-0.3.0.tgz";
        name = "strip-ansi-0.3.0.tgz";
        sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
      })
    ];
    buildInputs =
      (self.nativeDeps."strip-ansi" or []);
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "strip-ansi" ];
  };
  by-spec."strip-ansi"."^3.0.0" =
    self.by-version."strip-ansi"."3.0.1";
  by-version."strip-ansi"."3.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "strip-ansi-3.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
        name = "strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      })
    ];
    buildInputs =
      (self.nativeDeps."strip-ansi" or []);
    deps = {
      "ansi-regex-2.0.0" = self.by-version."ansi-regex"."2.0.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "strip-ansi" ];
  };
  by-spec."strip-bom"."^2.0.0" =
    self.by-version."strip-bom"."2.0.0";
  by-version."strip-bom"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "strip-bom-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz";
        name = "strip-bom-2.0.0.tgz";
        sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
      })
    ];
    buildInputs =
      (self.nativeDeps."strip-bom" or []);
    deps = {
      "is-utf8-0.2.1" = self.by-version."is-utf8"."0.2.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "strip-bom" ];
  };
  by-spec."strip-indent"."^1.0.1" =
    self.by-version."strip-indent"."1.0.1";
  by-version."strip-indent"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "strip-indent-1.0.1";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz";
        name = "strip-indent-1.0.1.tgz";
        sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
      })
    ];
    buildInputs =
      (self.nativeDeps."strip-indent" or []);
    deps = {
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "strip-indent" ];
  };
  by-spec."strip-json-comments"."~1.0.4" =
    self.by-version."strip-json-comments"."1.0.4";
  by-version."strip-json-comments"."1.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "strip-json-comments-1.0.4";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
        name = "strip-json-comments-1.0.4.tgz";
        sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
      })
    ];
    buildInputs =
      (self.nativeDeps."strip-json-comments" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "strip-json-comments" ];
  };
  by-spec."supports-color"."^0.2.0" =
    self.by-version."supports-color"."0.2.0";
  by-version."supports-color"."0.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "supports-color-0.2.0";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-0.2.0.tgz";
        name = "supports-color-0.2.0.tgz";
        sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
      })
    ];
    buildInputs =
      (self.nativeDeps."supports-color" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "supports-color" ];
  };
  by-spec."supports-color"."^2.0.0" =
    self.by-version."supports-color"."2.0.0";
  by-version."supports-color"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "supports-color-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
        name = "supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      })
    ];
    buildInputs =
      (self.nativeDeps."supports-color" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "supports-color" ];
  };
  by-spec."temp"."0.8.3" =
    self.by-version."temp"."0.8.3";
  by-version."temp"."0.8.3" = lib.makeOverridable self.buildNodePackage {
    name = "temp-0.8.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/temp/-/temp-0.8.3.tgz";
        name = "temp-0.8.3.tgz";
        sha1 = "e0c6bc4d26b903124410e4fed81103014dfc1f59";
      })
    ];
    buildInputs =
      (self.nativeDeps."temp" or []);
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    peerDependencies = [
    ];
    passthru.names = [ "temp" ];
  };
  "temp" = self.by-version."temp"."0.8.3";
  by-spec."temp"."^0.8.1" =
    self.by-version."temp"."0.8.3";
  by-spec."through"."2" =
    self.by-version."through"."2.3.8";
  by-version."through"."2.3.8" = lib.makeOverridable self.buildNodePackage {
    name = "through-2.3.8";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/through/-/through-2.3.8.tgz";
        name = "through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      })
    ];
    buildInputs =
      (self.nativeDeps."through" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "through" ];
  };
  by-spec."through"."~2.3" =
    self.by-version."through"."2.3.8";
  by-spec."through"."~2.3.1" =
    self.by-version."through"."2.3.8";
  by-spec."timed-out"."^2.0.0" =
    self.by-version."timed-out"."2.0.0";
  by-version."timed-out"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "timed-out-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/timed-out/-/timed-out-2.0.0.tgz";
        name = "timed-out-2.0.0.tgz";
        sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
      })
    ];
    buildInputs =
      (self.nativeDeps."timed-out" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "timed-out" ];
  };
  by-spec."topo"."1.x.x" =
    self.by-version."topo"."1.1.0";
  by-version."topo"."1.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "topo-1.1.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/topo/-/topo-1.1.0.tgz";
        name = "topo-1.1.0.tgz";
        sha1 = "e9d751615d1bb87dc865db182fa1ca0a5ef536d5";
      })
    ];
    buildInputs =
      (self.nativeDeps."topo" or []);
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "topo" ];
  };
  by-spec."tough-cookie"."~2.3.0" =
    self.by-version."tough-cookie"."2.3.1";
  by-version."tough-cookie"."2.3.1" = lib.makeOverridable self.buildNodePackage {
    name = "tough-cookie-2.3.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.1.tgz";
        name = "tough-cookie-2.3.1.tgz";
        sha1 = "99c77dfbb7d804249e8a299d4cb0fd81fef083fd";
      })
    ];
    buildInputs =
      (self.nativeDeps."tough-cookie" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "tough-cookie" ];
  };
  by-spec."trim-newlines"."^1.0.0" =
    self.by-version."trim-newlines"."1.0.0";
  by-version."trim-newlines"."1.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "trim-newlines-1.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz";
        name = "trim-newlines-1.0.0.tgz";
        sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
      })
    ];
    buildInputs =
      (self.nativeDeps."trim-newlines" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "trim-newlines" ];
  };
  by-spec."tsd"."~0.6.5" =
    self.by-version."tsd"."0.6.5";
  by-version."tsd"."0.6.5" = lib.makeOverridable self.buildNodePackage {
    name = "tsd-0.6.5";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/tsd/-/tsd-0.6.5.tgz";
        name = "tsd-0.6.5.tgz";
        sha1 = "34a0b64c1db6a70b3860fe4f5571d9d1357421ad";
      })
    ];
    buildInputs =
      (self.nativeDeps."tsd" or []);
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "bl-0.9.5" = self.by-version."bl"."0.9.5";
      "bluebird-1.2.4" = self.by-version."bluebird"."1.2.4";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "deep-freeze-0.0.1" = self.by-version."deep-freeze"."0.0.1";
      "definition-header-0.1.0" = self.by-version."definition-header"."0.1.0";
      "detect-indent-0.2.0" = self.by-version."detect-indent"."0.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "event-stream-3.1.7" = self.by-version."event-stream"."3.1.7";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "joi-4.9.0" = self.by-version."joi"."4.9.0";
      "joi-assert-0.0.3" = self.by-version."joi-assert"."0.0.3";
      "jsesc-0.5.0" = self.by-version."jsesc"."0.5.0";
      "json-pointer-0.2.2" = self.by-version."json-pointer"."0.2.2";
      "lazy.js-0.3.2" = self.by-version."lazy.js"."0.3.2";
      "lru-cache-2.5.2" = self.by-version."lru-cache"."2.5.2";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
      "minitable-0.0.4" = self.by-version."minitable"."0.0.4";
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "open-0.0.5" = self.by-version."open"."0.0.5";
      "request-2.74.0" = self.by-version."request"."2.74.0";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "type-detect-0.1.2" = self.by-version."type-detect"."0.1.2";
      "universal-analytics-0.3.11" = self.by-version."universal-analytics"."0.3.11";
      "update-notifier-0.2.2" = self.by-version."update-notifier"."0.2.2";
      "uri-templates-0.1.9" = self.by-version."uri-templates"."0.1.9";
      "uuid-2.0.2" = self.by-version."uuid"."2.0.2";
      "verror-1.4.0" = self.by-version."verror"."1.4.0";
    };
    peerDependencies = [
    ];
    passthru.names = [ "tsd" ];
  };
  "tsd" = self.by-version."tsd"."0.6.5";
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.3";
  by-version."tunnel-agent"."0.4.3" = lib.makeOverridable self.buildNodePackage {
    name = "tunnel-agent-0.4.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
        name = "tunnel-agent-0.4.3.tgz";
        sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
      })
    ];
    buildInputs =
      (self.nativeDeps."tunnel-agent" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "tunnel-agent" ];
  };
  by-spec."tweetnacl"."~0.13.0" =
    self.by-version."tweetnacl"."0.13.3";
  by-version."tweetnacl"."0.13.3" = lib.makeOverridable self.buildNodePackage {
    name = "tweetnacl-0.13.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.13.3.tgz";
        name = "tweetnacl-0.13.3.tgz";
        sha1 = "d628b56f3bcc3d5ae74ba9d4c1a704def5ab4b56";
      })
    ];
    buildInputs =
      (self.nativeDeps."tweetnacl" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "tweetnacl" ];
  };
  by-spec."type-detect"."~0.1.2" =
    self.by-version."type-detect"."0.1.2";
  by-version."type-detect"."0.1.2" = lib.makeOverridable self.buildNodePackage {
    name = "type-detect-0.1.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/type-detect/-/type-detect-0.1.2.tgz";
        name = "type-detect-0.1.2.tgz";
        sha1 = "c88e853e54e5abd88f1bf3194b477c853c94f854";
      })
    ];
    buildInputs =
      (self.nativeDeps."type-detect" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "type-detect" ];
  };
  by-spec."typescript"."~1.7.5" =
    self.by-version."typescript"."1.7.5";
  by-version."typescript"."1.7.5" = lib.makeOverridable self.buildNodePackage {
    name = "typescript-1.7.5";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-1.7.5.tgz";
        name = "typescript-1.7.5.tgz";
        sha1 = "a80fc231d9b95afeb9d10f0589560428dd0a045e";
      })
    ];
    buildInputs =
      (self.nativeDeps."typescript" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "typescript" ];
  };
  "typescript" = self.by-version."typescript"."1.7.5";
  by-spec."underscore"."1.x" =
    self.by-version."underscore"."1.8.3";
  by-version."underscore"."1.8.3" = lib.makeOverridable self.buildNodePackage {
    name = "underscore-1.8.3";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/underscore/-/underscore-1.8.3.tgz";
        name = "underscore-1.8.3.tgz";
        sha1 = "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022";
      })
    ];
    buildInputs =
      (self.nativeDeps."underscore" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "underscore" ];
  };
  by-spec."universal-analytics"."~0.3.4" =
    self.by-version."universal-analytics"."0.3.11";
  by-version."universal-analytics"."0.3.11" = lib.makeOverridable self.buildNodePackage {
    name = "universal-analytics-0.3.11";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/universal-analytics/-/universal-analytics-0.3.11.tgz";
        name = "universal-analytics-0.3.11.tgz";
        sha1 = "512879193a12a66dcbd9185121389bab913cd4b6";
      })
    ];
    buildInputs =
      (self.nativeDeps."universal-analytics" or []);
    deps = {
      "request-2.74.0" = self.by-version."request"."2.74.0";
      "underscore-1.8.3" = self.by-version."underscore"."1.8.3";
      "node-uuid-1.4.7" = self.by-version."node-uuid"."1.4.7";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    peerDependencies = [
    ];
    passthru.names = [ "universal-analytics" ];
  };
  by-spec."update-notifier"."^0.2.2" =
    self.by-version."update-notifier"."0.2.2";
  by-version."update-notifier"."0.2.2" = lib.makeOverridable self.buildNodePackage {
    name = "update-notifier-0.2.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/update-notifier/-/update-notifier-0.2.2.tgz";
        name = "update-notifier-0.2.2.tgz";
        sha1 = "e69b3a784b4e686a2acd98f5e66944591996e187";
      })
    ];
    buildInputs =
      (self.nativeDeps."update-notifier" or []);
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "is-npm-1.0.0" = self.by-version."is-npm"."1.0.0";
      "latest-version-1.0.1" = self.by-version."latest-version"."1.0.1";
      "semver-diff-2.1.0" = self.by-version."semver-diff"."2.1.0";
      "string-length-1.0.1" = self.by-version."string-length"."1.0.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "update-notifier" ];
  };
  by-spec."uri-templates"."~0.1.5" =
    self.by-version."uri-templates"."0.1.9";
  by-version."uri-templates"."0.1.9" = lib.makeOverridable self.buildNodePackage {
    name = "uri-templates-0.1.9";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/uri-templates/-/uri-templates-0.1.9.tgz";
        name = "uri-templates-0.1.9.tgz";
        sha1 = "c56f7a5731b3a310226695f6e5639180fd1aa249";
      })
    ];
    buildInputs =
      (self.nativeDeps."uri-templates" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "uri-templates" ];
  };
  by-spec."user-home"."^1.0.0" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = lib.makeOverridable self.buildNodePackage {
    name = "user-home-1.1.1";
    bin = true;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
        name = "user-home-1.1.1.tgz";
        sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
      })
    ];
    buildInputs =
      (self.nativeDeps."user-home" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "user-home" ];
  };
  by-spec."util-deprecate"."~1.0.1" =
    self.by-version."util-deprecate"."1.0.2";
  by-version."util-deprecate"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "util-deprecate-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        name = "util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      })
    ];
    buildInputs =
      (self.nativeDeps."util-deprecate" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "util-deprecate" ];
  };
  by-spec."uuid"."^2.0.1" =
    self.by-version."uuid"."2.0.2";
  by-version."uuid"."2.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "uuid-2.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-2.0.2.tgz";
        name = "uuid-2.0.2.tgz";
        sha1 = "48bd5698f0677e3c7901a1c46ef15b1643794726";
      })
    ];
    buildInputs =
      (self.nativeDeps."uuid" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "uuid" ];
  };
  by-spec."validate-npm-package-license"."^3.0.1" =
    self.by-version."validate-npm-package-license"."3.0.1";
  by-version."validate-npm-package-license"."3.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "validate-npm-package-license-3.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
        name = "validate-npm-package-license-3.0.1.tgz";
        sha1 = "2804babe712ad3379459acfbe24746ab2c303fbc";
      })
    ];
    buildInputs =
      (self.nativeDeps."validate-npm-package-license" or []);
    deps = {
      "spdx-correct-1.0.2" = self.by-version."spdx-correct"."1.0.2";
      "spdx-expression-parse-1.0.2" = self.by-version."spdx-expression-parse"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "validate-npm-package-license" ];
  };
  by-spec."verror"."1.3.6" =
    self.by-version."verror"."1.3.6";
  by-version."verror"."1.3.6" = lib.makeOverridable self.buildNodePackage {
    name = "verror-1.3.6";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
        name = "verror-1.3.6.tgz";
        sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
      })
    ];
    buildInputs =
      (self.nativeDeps."verror" or []);
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
    };
    peerDependencies = [
    ];
    passthru.names = [ "verror" ];
  };
  by-spec."verror"."~1.4.0" =
    self.by-version."verror"."1.4.0";
  by-version."verror"."1.4.0" = lib.makeOverridable self.buildNodePackage {
    name = "verror-1.4.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/verror/-/verror-1.4.0.tgz";
        name = "verror-1.4.0.tgz";
        sha1 = "5d8fdf5875141c3183b7c6bc23a0aa3e3e6ca4e2";
      })
    ];
    buildInputs =
      (self.nativeDeps."verror" or []);
    deps = {
      "extsprintf-1.0.3" = self.by-version."extsprintf"."1.0.3";
    };
    peerDependencies = [
    ];
    passthru.names = [ "verror" ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.2";
  by-version."wrappy"."1.0.2" = lib.makeOverridable self.buildNodePackage {
    name = "wrappy-1.0.2";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        name = "wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      })
    ];
    buildInputs =
      (self.nativeDeps."wrappy" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "wrappy" ];
  };
  by-spec."xdg-basedir"."^1.0.0" =
    self.by-version."xdg-basedir"."1.0.1";
  by-version."xdg-basedir"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "xdg-basedir-1.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/xdg-basedir/-/xdg-basedir-1.0.1.tgz";
        name = "xdg-basedir-1.0.1.tgz";
        sha1 = "14ff8f63a4fdbcb05d5b6eea22b36f3033b9f04e";
      })
    ];
    buildInputs =
      (self.nativeDeps."xdg-basedir" or []);
    deps = {
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    peerDependencies = [
    ];
    passthru.names = [ "xdg-basedir" ];
  };
  by-spec."xregexp"."~2.0.0" =
    self.by-version."xregexp"."2.0.0";
  by-version."xregexp"."2.0.0" = lib.makeOverridable self.buildNodePackage {
    name = "xregexp-2.0.0";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/xregexp/-/xregexp-2.0.0.tgz";
        name = "xregexp-2.0.0.tgz";
        sha1 = "52a63e56ca0b84a7f3a5f3d61872f126ad7a5943";
      })
    ];
    buildInputs =
      (self.nativeDeps."xregexp" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "xregexp" ];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.1";
  by-version."xtend"."4.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "xtend-4.0.1";
    bin = false;
    src = [
      (fetchurl {
        url = "https://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
        name = "xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      })
    ];
    buildInputs =
      (self.nativeDeps."xtend" or []);
    deps = {
    };
    peerDependencies = [
    ];
    passthru.names = [ "xtend" ];
  };
}
