{pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ 
      python3
      python311Packages.polars
      python311Packages.pyodbc
      python311Packages.xlsx2csv
      python311Packages.pyarrow
      python311Packages.sqlalchemy
     ];

      shellHook = ''
      '';

  }