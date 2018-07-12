let Calculator = artifacts.require("./Calculator.sol")
let Funcs = artifacts.require("./Funcs.sol")

module.exports = function(deployer){
    deployer.deploy(Calculator, 10);
    deployer.deploy(Funcs)

}