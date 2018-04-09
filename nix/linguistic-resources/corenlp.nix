{ fetchurl, fetchzip, srcOnly }:

{ 
  corenlp = srcOnly {
    name = "corenlp-20161031";
    src = fetchzip {
      url = "http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip";
      sha256 = "0lm4rhvhfi54y01ad40g3v9qdw5qk5982fqfa465x2s9g7fxknmv";
      extraPostFetch = ''
        chmod go-w $out
      '';
    };
  };
  corenlp_models = fetchurl {
    url = "http://nlp.stanford.edu/software/stanford-english-corenlp-2016-10-31-models.jar";
    sha256 = "1jl86fgqcbrhmp000id705wx131j4zcmm70q7pprgj5zyjp32zxm";
    
  };
}