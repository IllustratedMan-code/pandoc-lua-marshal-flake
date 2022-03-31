{
  description = "A very basic flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    pandoc-lua-marshal-src = {
      url = "github:pandoc/pandoc-lua-marshal";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, pandoc-lua-marshal-src }: {


    defaultPackage.x86_64-linux = with import nixpkgs{system = "x86_64-linux";};

  };
}
