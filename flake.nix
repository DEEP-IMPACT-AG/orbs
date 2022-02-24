{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs, nixpkgs-unstable, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
        };
        unstable = import nixpkgs-unstable {
          inherit system;
          config = { allowUnfree = true; };
        };
      in {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            awscli2
            bash
            circleci-cli
            direnv
          ];
        };
      }
    );
}
