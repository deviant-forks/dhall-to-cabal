{ mkDerivation, base, Cabal, directory, lib }:
mkDerivation {
  pname = "ghc-paths";
  version = "0.1.0.12";
  sha256 = "1164w9pqnf7rjm05mmfjznz7rrn415blrkk1kjc0gjvks1vfdjvf";
  revision = "2";
  editedCabalFile = "07f81larq1ddxq2m2vyq05sdhfmz0whf2c3i5cdq57pkhijxppxg";
  setupHaskellDepends = [ base Cabal directory ];
  libraryHaskellDepends = [ base ];
  description = "Knowledge of GHC's installation directories";
  license = lib.licenses.bsd3;
}
