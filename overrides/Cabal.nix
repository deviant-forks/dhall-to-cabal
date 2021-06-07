{ mkDerivation, array, async, base, base-compat, base-orphans
, binary, bytestring, clock, containers, deepseq, Diff, directory
, filepath, integer-logarithms, lib, mtl, optparse-applicative, parsec
, pretty, process, QuickCheck, rere, stm, tagged, tar, tasty
, tasty-golden, tasty-hunit, tasty-quickcheck, temporary, text
, time, transformers, tree-diff, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "3.4.0.0";
  sha256 = "1za1cl14fkw8y89hhw6sqirzmkixjaa4wpqsibyk0fvnjs59jydq";
  setupHaskellDepends = [ mtl parsec ];
  libraryHaskellDepends = [
    array base binary bytestring containers deepseq directory filepath
    mtl parsec pretty process text time transformers unix
  ];
  testHaskellDepends = [
    array async base base-compat base-orphans binary bytestring clock
    containers deepseq Diff directory filepath integer-logarithms
    optparse-applicative pretty process QuickCheck rere stm tagged tar
    tasty tasty-golden tasty-hunit tasty-quickcheck temporary text
    transformers tree-diff
  ];
  doCheck = false;
  description = "A framework for packaging Haskell software";
  license = lib.licenses.bsd3;
}