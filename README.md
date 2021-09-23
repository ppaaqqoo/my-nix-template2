# A Plutus template for "Iteration #2 - Plutus Pioneer Program"

This is a [plutus](https://github.com/input-output-hk/plutus) template configured to try and run the plutus playground server and ready to work with the lectures of the second iteration of Plutus Pioneer Program with a nix based development environment on [Gitpod](https://www.gitpod.io/).

## First Steps
    - In a browser, navigate to this address [\\\](\\\). (You need to signup on Gitpod with your GitHub, GitLab or Bitbucket account), once you signed up, it will create a workspace with this template.
    - Now you only need to clone the next github repositories:
        - `git clone https://github.com/input-output-hk/plutus.git`
        - `git clone https://github.com/input-output-hk/plutus-pioneer-program.git`

## Run Plutus playground server

Go to plutus/plutus-playground-server directory and run a nix-shell (It might take a while). Once nix-shell is ready, in the same directory type plutus-playground-server.
    - nix-shell
    - cd plutus/plutus-playground-server
    - plutus-playground-server

Open another terminal (plutus/plutus-playground-server), and in the same directory run npm start (It will take a while the first time, so be patient).
    - nix-shell
    - cd plutus/plutus-playground-server
    - npm start

We will need to install [Gitpod Local Companion](https://www.gitpod.io/blog/local-app) if we want to open the Plutus Playground in our localhost.

    ## Gitpod Local Companion Installation

    #### mac
    - `curl -OL https://gitpod.io/static/bin/gitpod-local-companion-darwin`
    - `chmod +x ./gitpod-local-companion-*`

    #### linux
    - `curl -OL https://gitpod.io/static/bin/gitpod-local-companion-linux`
    - `chmod +x ./gitpod-local-companion-*`

    ## Running Gitpod Local Companion

    - `./gitpod-local-companion-[darwin|linux`
