{
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
      devShell.x86_64-linux = pkgs.mkShellNoCC {
        buildInputs = with pkgs; [
          ghc
        ];
      };
  };
}

