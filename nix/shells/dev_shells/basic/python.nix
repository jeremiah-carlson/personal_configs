{pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ 
      python3
      protobuf
      python311Packages.grpcio
      python311Packages.grpcio-tools
      python311Packages.grpcio-testing
     ];

      shellHook = ''
      
      '';

  }