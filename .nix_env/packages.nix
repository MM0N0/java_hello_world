let
    fixed_pkgs = import ./pinned.nix;
in
[
    fixed_pkgs.coreutils
    fixed_pkgs.bash
    fixed_pkgs.openjdk17-bootstrap
    fixed_pkgs.gradle_7
]
