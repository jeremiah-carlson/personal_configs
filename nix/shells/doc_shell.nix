{pkgs ? import <nixpkgs> {}}:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ pandoc  texliveSmall mermaid-filter ];
      shellHook = 
        ''
        alias gen_pdf='pandoc -o pandoc_out.pdf --filter=mermaid-filter -i '
        '';
  }