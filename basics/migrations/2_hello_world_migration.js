const Helloworld = artifacts.require("Helloworld");
const PermanentHello = artifacts.require("PermanentHello");

module.exports = function (deployer) {
  deployer.deploy(Helloworld, "Hello world constructor").then(async () => {
    const instance = await Helloworld.deployed();
    const message = instance.message();
    return deployer.deploy(PermanentHello, message);
  });
};
