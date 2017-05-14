{ stdenv, fetchgit, boost, bash }:

let ukbsrc = fetchgit {
      url = "https://github.com/asoroa/ukb.git";
      rev = "4374807259e43b91c749013b27f0e7080c0ad17f";
      sha256 = "18fi76mv0f4ywlzhwp21ba3x3pvv5n8ccqvn2p1fbqi2sg6ml96a";
    };
in 

stdenv.mkDerivation {
  name = "ukb-3.0";
  src = ukbsrc + "/src";
  buildInputs = [ boost bash ];
  configureFlags = ["--with-boost-include=${boost.dev}/include"];
  patchPhase = ''
    sed -i UKB-VERSION-GEN -e 's@/bin/bash@${bash}/bin/bash@' 
  '';
  #buildPhase = ''
  #  exit -1;  
  #'';

  meta = {
  };
}
