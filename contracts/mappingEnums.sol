pragma solidity ^0.4.22;


contract mappingEnums {

  mapping( string => string) capitals;
  constructor() public {
  }
  function addCapital(string country, string capital){
    //Store the capital on per country basis
    capitals[country] = capital;
  }
  function getCapital(string country) returns (string){
    return capitals[country];
  }
  function removeCapital (string country){
    delete(capitals[country]); //will remove the key value pair
  }
}
