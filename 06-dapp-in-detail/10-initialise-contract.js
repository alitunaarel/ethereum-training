// Import libraries we need.
import { default as Web3 } from 'web3'
import { default as contract } from 'truffle-contract'

// Import our contract artifacts and turn them into usable abstractions.
import metacoinArtifacts from '../../build/contracts/MetaCoin.json'

// MetaCoin is our usable abstraction, which we'll use through the code below.
var MetaCoin = contract(metacoinArtifacts)

// Bootstrap the MetaCoin abstraction for use.
MetaCoin.setProvider(web3.currentProvider)

// Connect to the deployed version
MetaCoin.deployed().then(function (instance) {
  meta = instance
  return meta.getBalance.call(account, { from: account })
})
