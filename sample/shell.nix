{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/28319deb5ab05458d9cd5c7d99e1a24ec2e8fc4b.tar.gz") {} }:  # nixos-unstable since go-task=3.20

pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.htop
    pkgs.zlib
    pkgs.git
    pkgs.go-task
  ];

  shellHook = ''
    echo hello $MY_ENV_VARIABLE
  '';

  MY_ENV_VARIABLE = "world";
}