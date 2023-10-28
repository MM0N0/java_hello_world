let
    fixed_pkgs = import ../.env/pinned.nix;
    fixed_packages = import ../.env/packages.nix;
in
fixed_pkgs.dockerTools.buildLayeredImage {
    name = "dev_docker__java_hello_word";
    tag = "v1";
    contents = fixed_packages;
    config = {
      Cmd = [ "${fixed_pkgs.bash}/bin/bash" ];
    };
}
