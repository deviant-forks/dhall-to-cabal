let
  nixpkgs = builtins.fetchGit {
    url = "https://github.com/NixOS/nixpkgs";
    rev = "ffb7cfcfad15e3bff9d05336767e59ee6ee24cb6";
  };

  config = {
    packageOverrides = pkgs: {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = self: super: {
          # Local packages
          dhall-to-cabal = self.callPackage ./dhall-to-cabal.nix {};

          # Things we need newer versions of.
          # Cabal = self.callPackage ./overrides/Cabal.nix {};

          # dhall = pkgs.haskell.lib.dontCheck (super.callPackage ./overrides/dhall.nix {});

          # ghc-paths = self.callPackage ./overrides/ghc-paths.nix {};
        };
      };
    };
  };

  pkgs =
    import nixpkgs { inherit config; };

in
  { inherit (pkgs.haskellPackages) dhall-to-cabal;
  }
