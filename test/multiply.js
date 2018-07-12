let Calculator = artifacts.require("./Calculator.sol");
contract('Calculatour', function(accounts){
      // Expected behavior - result is intialized to 10
    //Test Case#2
    it("should assert mytruth", function(){
        let calculator;
        return Calculator.deployed().then(function(instance){
            calculator= instance;
            return calculator.getResult.call();
        }).then(function(result){
            assert.equal(result.valueOf(), 10, "contract initialized with value of 10");
            calculator.multiplyWithNumber(10);
            calculator.dividedByNumber(5);
            return calculator.getResult.call();

        }).then(function(result){
            assert.equal(result.valueOf(), 20, "result should be 25")
        })
    })
})