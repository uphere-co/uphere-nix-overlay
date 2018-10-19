{ pkgs ? import <nixpkgs> {} }:

{
  reflex-platform-src = pkgs.fetchgit {
    url = "git://github.com/reflex-frp/reflex-platform.git";
    rev = "f3ff81d519b226752c83eefd4df6718539c3efdc";
    sha256 = "1ijxfwl36b9b2j4p9j3bv8vf7qfi570m1c5fjyvyac0gy0vi5g8j";
  };

  servant-reflex-src = pkgs.fetchgit {
    url = "git://github.com/wavewave/servant-reflex.git";
    rev = "0274102cdcb236bd36fff98dd72caf863bb85a21";
    sha256 = "1q07psg9d0698q9z201s0kg8ccvswhj5p33jqxv17q8zpbdblwlh";
  };

  semantic-reflex-src = pkgs.fetchgit {
    url = "git://github.com/wavewave/semantic-reflex.git";
    rev = "f8c401bbf8f13de2f1fefb9f0f34c8b9d6430ed6";
    sha256 = "1vclmffl28yycpj8x42kf1531jzkn17p78p9x7ghsyw5v4c0k9ay";
  };

}
