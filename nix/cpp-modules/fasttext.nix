{ stdenv, fetchgit }:


stdenv.mkDerivation {
  name = "fasttext-c749d3b";
  src = fetchgit {
    url = "https://github.com/uphere-co/fastText.git";
    rev = "610b2aeccce2c34c4f21d3424aaa3bcefb185810";
    sha256 = "0c6d1y0bb844saz16mk5xs4lwjzhc9ik8byhgx231fwzaljfalhk";
  };
  
  buildInputs = [ ];
  enableParallelBuilding = true;
  configureFlags = [ ] ;

  installFlags = [ "INSTALLDIR=$(out)" ];

  phases = [ "unpackPhase" "buildPhase" "installPhase" ];

}

