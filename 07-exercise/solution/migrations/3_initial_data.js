var PublicElection = artifacts.require('./PublicElection.sol')

module.exports = function (deployer) {
  PublicElection.deployed().then(function (instance) {
    return instance.addCandidate('0xB21087870E49947076f72d48921f98be51FbA702', 'Trump')
  })
}
