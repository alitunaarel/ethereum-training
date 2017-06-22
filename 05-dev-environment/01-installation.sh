#!/bin/bash

npm install -g truffle@beta
npm install -g ethereumjs-testrpc@beta

# Install Atom manually from https://atom.io
apm install linter
apm install linter-solidity
apm install autocomplete-solidity

truffle init webpack

# Downloading project...
# Installing dependencies...
# Project initialized.
#
#   Documentation: https://github.com/trufflesuite/truffle-init-webpack
#
# Commands:
#
#   Compile:        truffle compile
#   Migrate:        truffle migrate
#   Test:           truffle test
#   Build Frontend: npm run build
#   Run Linter:     npm run lint
#   Run Dev Server: npm run dev
#
# Hint: Run the dev server via `npm run dev` to have your changes rebuilt automatically.
#
# Make sure you have an Ethereum client like the ethereumjs-testrpc running on http://localhost:8545.
