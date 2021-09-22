FROM gitpod/workspace-base

CMD sh <(curl -L https://nixos.org/nix/install) --daemon
