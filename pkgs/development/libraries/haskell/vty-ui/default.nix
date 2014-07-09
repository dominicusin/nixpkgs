{ cabal, filepath, mtl, QuickCheck, random, regexBase, stm, text
, time, vector, vty
}:

cabal.mkDerivation (self: {
  pname = "vty-ui";
  version = "1.7.1";
  sha256 = "1xgv2psbqcqpzgj1f1pis6hr7yvny8y9ajimllam7zsk6kbhngzz";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    filepath mtl QuickCheck random regexBase stm text time vector vty
  ];
  jailbreak = true;
  meta = {
    homepage = "http://jtdaugherty.github.com/vty-ui/";
    description = "An interactive terminal user interface library for Vty";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
