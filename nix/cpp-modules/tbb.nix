{ stdenv, fetchurl }:

let
  SHLIB_EXT = if stdenv.isDarwin then "dylib" else "so";
in
stdenv.mkDerivation {
  name = "tbb-2017-U5";

  src = fetchurl {
    url = "https://github.com/01org/tbb/archive/2017_U5.tar.gz";
    sha256 = "0ig5qvz1lk7w7gsp02ly05icajxfbazrgp10vma3pwi0sl5ay2vq";
  };

  checkTarget = "test";
  doCheck = false;

  buildFlags= [ ''CFLAGS="-D__TBB_VARIADIC_PARALLEL_INVOKE"'' ];
  installPhase = ''
    mkdir -p $out/{lib,share/doc}
    cp "build/"*release*"/"*${SHLIB_EXT}* $out/lib/
    mv include $out/
    rm $out/include/index.html
    mv doc/html $out/share/doc/tbb
  '';

  enableParallelBuilding = true;

  meta = {
    description = "Intel Thread Building Blocks C++ Library";
    homepage = "http://threadingbuildingblocks.org/";
    license = stdenv.lib.licenses.lgpl3Plus;
    longDescription = ''
      Intel Threading Building Blocks offers a rich and complete approach to
      expressing parallelism in a C++ program. It is a library that helps you
      take advantage of multi-core processor performance without having to be a
      threading expert. Intel TBB is not just a threads-replacement library. It
      represents a higher-level, task-based parallelism that abstracts platform
      details and threading mechanisms for scalability and performance.
    '';
    platforms = with stdenv.lib.platforms; linux ++ darwin;
    maintainers = with stdenv.lib.maintainers; [ ianwookim peti thoughtpolice ];
  };
}
