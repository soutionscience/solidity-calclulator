pragma solidity ^0.4.22;


contract globals {
  enum TimeUnit {Minute, Hour, Day}

  constructor() public {
  }
  function CalculateFutureTime (uint distance , uint units)  returns (uint){
    if(units == uint(TimeUnit.Minute)){ //checks if inits is in minutes--wierd!!
    return (now + distance *1 minutes); // convers minutes to second and adding to futer time
    }
    else if(units == uint(TimeUnit.Hour)){
      return (now + distance *1 hours);
    }
     else if(units == uint(TimeUnit.Day)){
      return (now + distance *1 days);
    }
  
  }

  function getBlockInformation() returns(uint number, bytes32 hash, address coinbase, uint difficulty){
  number = block.number;
  hash = block.blockhash(number -1); // -1 excludes current 
  //current block
  coinbase = block.coinbase;
  difficulty = block.difficulty;
  }
  
}
