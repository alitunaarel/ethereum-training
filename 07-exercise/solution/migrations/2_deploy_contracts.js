var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
var PublicElection = artifacts.require("./PublicElection.sol");


module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);

  deployer.deploy(PublicElection, 1498229325, 1508229325)
};
