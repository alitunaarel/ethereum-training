#!/bin/bash

# Install NodeJS (latest version)

npm install -g truffle@beta
npm install -g ethereumjs-testrpc@beta

# Install Atom manually from https://atom.io
apm install linter
apm install linter-solidity
apm install autocomplete-solidity

truffle init webpack
