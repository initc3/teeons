{ system ? builtins.currentSystem }:

let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
  hellorust = import ./hellorust.nix { inherit sources pkgs; };

  name = "xena/hellorust";
  tag = "latest";

in pkgs.dockerTools.buildLayeredImage {
  inherit name tag;
  contents = [ hellorust ];

  config = {
    Cmd = [ "/bin/hellorust" ];
    Env = [ "ROCKET_PORT=5000" ];
    WorkingDir = "/";
  };
}
