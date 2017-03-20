{ pkgs ? import <nixpkgs> {} }:

self: super:

with pkgs.haskell.lib;

let removeLibraryHaskellDepends = pnames: depends:
       builtins.filter (e: !(builtins.elem (e.pname or "") pnames)) depends;
in
{
      #"ghcjs-dom" = pkgs.haskell.lib.overrideCabal (addBuildDepends super.ghcjs-dom_0_2_4_0 [self.ghcjs-base]) (drv: {
      #  libraryHaskellDepends = removeLibraryHaskellDepends [ "glib" "gtk" "gtk3" "webkitgtk" "webkitgtk3" ] drv.libraryHaskellDepends;
      #});
    "ghcjs-dom" = self.ghcjs-dom_0_2_4_0;
    "ghcjs-dom_0_2_4_0" = self.callPackage
      ({ mkDerivation, base, ghcjs-base, text, transformers
       }:
       mkDerivation {
         pname = "ghcjs-dom";
         version = "0.2.4.0";
         sha256 = "986db6b770c348d7a28368309a648626455d55e7a5705a849fd5a2981eb868a6";
         libraryHaskellDepends = [
	   base text transformers ghcjs-base 
         ];
         description = "DOM library that supports both GHCJS and WebKitGTK";
         license = pkgs.stdenv.lib.licenses.mit;
         hydraPlatforms = pkgs.stdenv.lib.platforms.none;
       }) {};

      "ghcjs-dom-jsffi" = self.callPackage
	({ mkDerivation }:
	 mkDerivation {
	   pname = "ghcjs-dom-jsffi";
	   version = "0.3.1.0";
	   sha256 = "1z400sqdlbcf68xm68mhcla04mb5v4jwr20br3iczh176yklz85g";
	   libraryHaskellDepends = with self; [ text transformers ghcjs-base ghcjs-prim ghc-prim ] ;
	   isLibrary = false;
	   isExecutable = false;
	   description = "DOM library using JSFFI and GHCJS";
	   license = pkgs.stdenv.lib.licenses.mit;
	   hydraPlatforms = pkgs.stdenv.lib.platforms.none;
	   jailbreak = true;
	 }) {};


      "jsaddle" = pkgs.haskell.lib.overrideCabal (addBuildDepends super.jsaddle
        [self.ref-tf self.ghcjs-base self.text]

      ) (drv: {
        version = "0.5.2.0";
	sha256 = "1yx432npm567gahy2flls60ix1i83v5sp8ravxb2jdb0vs4y0vr1";
	jailbreak = true;
	libraryHaskellDepends = removeLibraryHaskellDepends
	  [ "webkitgtk3-javascriptcore" "haskell-gi-base" "gi-webkit" "gi-glib" "gi-gtk"
	    "gi-javascriptcore"
	  ]
	  drv.libraryHaskellDepends;
      });
  
      "webkitgtk3-javascriptcore" = self.webkitgtk3-javascriptcore_0_13_1_2;

      "semigroups" = addBuildDepends super.semigroups (with self; [hashable tagged text unordered-containers ]);
      "yesod-routes" = doJailbreak super.yesod-routes;
      
    }