const BloodstainStorage = artifacts.require("BloodstainStorage");

module.exports = function (deployer) {
  deployer.deploy(BloodstainStorage);
};
