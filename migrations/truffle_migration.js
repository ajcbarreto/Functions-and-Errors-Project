// Help Truffle find `RequireAssertRevert.sol` in the `/contracts` directory
const TruffleMigration1 = artifacts.require("./contracts/RequireAssertRevert.sol");

module.exports = function(deployer) {
  // Command Truffle to deploy the Smart Contract
  deployer.deploy(TruffleMigration1);
};