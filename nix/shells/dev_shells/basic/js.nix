{pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ nodejs_21 nodePackages.pnpm nodePackages.eslint];
      shellHook = ''
      pnpm i
      '';
  }