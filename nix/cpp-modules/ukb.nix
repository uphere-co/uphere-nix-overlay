{ stdenv, fetchgit, fetchurl, boost }:

let ukbsrc = fetchgit {
      url = "https://github.com/asoroa/ukb.git";
      rev = "4374807259e43b91c749013b27f0e7080c0ad17f";
      sha256 = "18fi76mv0f4ywlzhwp21ba3x3pvv5n8ccqvn2p1fbqi2sg6ml96a";
    };
    
    lkbsrc = fetchurl {
      url = "http://ixa2.si.ehu.es/ukb/lkb_sources.tar.bz2";
      sha256 = "16xmn1ninz23aysx716ngmwn97h2z3v2zkbbkvgm1fz4brhmqfly";
    };
in 

stdenv.mkDerivation {
  name = "ukb-3.0";
  src = ukbsrc + "/src";
  buildInputs = [ boost ];
  enableParallelBuilding = true;
  patchPhase = ''
    sed -i UKB-VERSION-GEN -e 's@/bin/bash@/bin/sh@' 
  '';
  configureFlags = [ 
                     "--with-boost-include=${boost.dev}/include"
                     "--with-boost-lib=${boost}/lib"
                   ];
  postConfigure = ''
    sed -i Makefile -e 's@$(STATIC)@@'
  '';

  postInstall = ''
    tar -xjvf ${lkbsrc}
    $out/bin/compile_kb -o wn30.bin lkb_sources/30/wnet30_rels.txt
    mkdir -p $out/share/data
    mkdir -p $out/share/example
    cp wn30.bin $out/share/data/wn30.bin
    cp lkb_sources/30/wnet30_dict.txt $out/share/data/wnet30_dict.txt
    cat > $out/share/example/context.txt << EOF
    ctx_01
    man#n#w1#1 kill#v#w2#1 cat#n#w3#1 hammer#n#w4#1
    EOF
  '';

  meta = {
  };
}

