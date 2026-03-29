{
  description = "Rust development environment for Mountr";

  inputs = {
    pkgs.url = "github:NixOS/nixpkgs/nixos-25-11";
  };

  outputs = {
    self,
    pkgs,
  }: {
    devShells.default = pkgs.mkShell {
      packages = with pkgs; [rustup];

      shellHook = ''
        rustc --version
      '';
    };
  };
}
