FROM gitpod/workspace-base

USER root
# Install Nix
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl
RUN addgroup --system nixbld \
  && adduser gitpod nixbld \
  && for i in $(seq 1 3); do useradd -ms /bin/bash nixbld$i &&  adduser nixbld$i nixbld; done \
  && mkdir -m 0755 /nix && chown gitpod /nix \
  && mkdir -p /etc/nix \
  && echo 'sandbox = false \n\
substituters        = https://cache.nixos.org https://hydra.iohk.io \n\
trusted-public-keys = iohk.cachix.org-1:DpRUyj7h7V830dp/i6Nti+NEO2/nhblbov/8MW7Rqoo= hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=' > /etc/nix/nix.conf
CMD /bin/bash -l

USER gitpod
ENV USER gitpod
WORKDIR /home/gitpod
RUN touch .bash_profile \
 && curl -L https://nixos.org/nix/install | sh
