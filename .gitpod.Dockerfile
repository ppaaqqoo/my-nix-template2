FROM gitpod/workspace-base

CMD /bin/bash -l
RUN sh <(curl -L https://nixos.org/nix/install) --daemon
