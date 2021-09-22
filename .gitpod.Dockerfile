FROM gitpod/workspace-base

RUN sh <(curl -L https://nixos.org/nix/install) --daemon
