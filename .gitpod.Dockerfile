FROM gitpod/workspace-base

USER root

RUN mkdir -m 0755 /nix && chown gitpod /nix \
  && mkdir -p /etc/nix
RUN curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
