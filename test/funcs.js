let Funcs = artifacts.require("./Funcs.sol");
contract('Funcs', function(accounts) {
  it("should assert true", function() {
    var funcs;
    Funcs.deployed().then(function(instanace){
     funcs = instanace;
    funcs.setOwnerInfo("Marsh", 31)
    return funcs.getOwnerName.call();
    }).then(function(result){
      assert.equal(result, "Marsh", "expected Marsh")
      return funcs.getOwnerAge.call()
    }).then(function(result){
      assert.equal(result, 31, "age was expected 31")
    })
    
  
  });
});
