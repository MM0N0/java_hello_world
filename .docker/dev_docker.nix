let
    fixed_pkgs = import ../.env/pinned.nix;
    fixed_packages = import ../.env/packages.nix;
in
fixed_pkgs.dockerTools.buildLayeredImage {
    name = "mm0n0/dev_docker_java_hello_world";
    tag = "v1";
    contents = fixed_packages;
    config = {
      Cmd = [ "${fixed_pkgs.bash}/bin/bash" ];
    };
}
