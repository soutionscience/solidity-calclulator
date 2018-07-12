pragma solidity ^0.4.22;


contract Funcs {
  string ownerName;
    uint8 ownerAge;
  constructor() { }

  function setOwnerInfo( string name, uint8 age ){
    ownerName = name;
    ownerAge = age;
  }

  function getOwnerName() returns (string){
   return ownerName;
  }
  function getOwnerAge() returns (uint8 age){
   ownerAge = age;
  }
  }
