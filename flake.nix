{
  description = "Rust development environment for Mountr";

  inputs = {
    pkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = {
    self,
    pkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import pkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [rustup];

      shellHook = ''
        rustc --version
      '';
    };
  };
}
