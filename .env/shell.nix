let
    fixed_pkgs = import ./pinned.nix;
    fixed_packages = import ./packages.nix;
in
fixed_pkgs.mkShell {
    buildInputs = fixed_packages;
}
