{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    infinity.url = "github:bloxx12/infinite-flakes";
  };

  outputs = {infinity}: {
    # packages.x
    # inherit (infinity) packages.x86_64-linux.default;
    packages.x86_64-linux.default = infinity.packages.x86_64-linux.default;
  };
}
