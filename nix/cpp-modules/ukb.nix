{ stdenv, fetchgit, fetchurl, boost }:

let ukbsrc = fetchgit {
      url = "https://github.com/uphere-co/ukb.git";
      rev = "6bd26ef75ff8ead26ccfbda5c58832e4eb41bf1b";
      sha256 = "10cnaca398p08l2xvs7if7bk2dh7drz1r60zq1h1zah3b25zc03m";
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
  configureFlags = [ 
                     "--with-boost-include=${boost.dev}/include"
                     "--with-boost-lib=${boost}/lib"
                   ];
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

