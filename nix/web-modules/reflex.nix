{ pkgs ? import <nixpkgs> {} }:

{
  reflex-platform-src = pkgs.fetchgit {
    url = "git://github.com/reflex-frp/reflex-platform.git";
    rev = "f3ff81d519b226752c83eefd4df6718539c3efdc";
    sha256 = "1ijxfwl36b9b2j4p9j3bv8vf7qfi570m1c5fjyvyac0gy0vi5g8j";
  };
}
