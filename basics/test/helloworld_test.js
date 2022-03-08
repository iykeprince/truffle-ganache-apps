const Helloworld = artifacts.require("Helloworld");

contract("Helloworld ", (accounts) => {
  it("should set message from constructor correctly", async () => {
    const instance = await Helloworld.deployed();
    const message = await instance.message();
    assert.equal(message, "Hello world constructor");
  });

  it("owner should be account[0]", async () => {
    const instance = await Helloworld.deployed();
    const owner = await instance.owner();
    assert.equal(owner, accounts[0]);
  });

  it("should set message correctly", async () => {
    const instance = await Helloworld.deployed();
    await instance.setMessage("new value", { from: accounts[0] });
    const message = await instance.message();
    assert.equal(message, "new value");
  });
});
