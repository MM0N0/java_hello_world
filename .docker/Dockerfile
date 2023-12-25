FROM nixos/nix
RUN nix-channel --update

# copy definition of nix packages
COPY ../.nix_env .nix_env

# install all nix packages from "/tmp/.env/packages.nix"
# keep this in one RUN, so the layer gets much smaller
RUN nix-env -if .nix_env/packages.nix && \
    nix-collect-garbage -d && rm -Rf /root/.cache/nix

RUN mkdir /workdir
WORKDIR /workdir
