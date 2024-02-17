{pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ 
      go
      protobuf
      protoc-gen-go 
      protoc-gen-doc 
     ];

      shellHook = ''
      export PATH="$PATH:$(go env GOPATH)/bin"

      alias go_gen_protoc="protoc --go_out=. --go-grpc_out=. "
      '';

  }