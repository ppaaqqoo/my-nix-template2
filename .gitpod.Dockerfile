FROM gitpod/workspace-base

RUN curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
