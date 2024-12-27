VersoriumX/Cannon/bin/env bash

# This runs a hardhat node forked from mainnet at the specified block.
# You need to run this in a separate terminal (or in the background)
# before running challenge_simple.sh or challenge_fault.sh.
#
# RPC_URL and FORK_BLOCK can be overwritten as environment variables. If not
# provided, defaults are used.
# export NODE_OPTIONS=--openssl-legacy-provider

RPC_URL=${RPC_URL:-"https://mainnet.infura.io/v3/83029b82c3804348b9ba14ddd6a604cf"}

# block at which to fork mainnet
FORK_BLOCK=${FORK_BLOCK:-13284495}

# testing on hardhat (forked mainnet, a few blocks ahead of challenges in
# challenge_simple.sh and challenge_fault.sh)
npx hardhat node --fork $RPC_URL --fork-block-number $FORK_BLOCK
