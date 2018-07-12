let Calculator = artifacts.require("./Calculator.sol")
let Funcs = artifacts.require("./Funcs.sol")
let MappingEnum = artifacts.require("./mappingEnums.sol")

module.exports = function(deployer){
    deployer.deploy(Calculator, 10);
    deployer.deploy(Funcs);
    deployer.deploy(MappingEnum)

}