pragma solidity ^0.4.22;


contract Calculator {
  uint result;
  constructor(uint initial) public {
    result = initial;
  }
  //returms the result
 function getResult() public constant returns(uint){
   return result;
 }
 // result = result + number
 function addToNumber(uint num) public {
   result = result + num;
 

 }
 // result = result- num
  function subtractFromNumber(uint num) public {
    result = result - num;
 }

 // result = result*num
  function multiplyWithNumber(uint num) public {
    result = result * num;

 }
   // result = result/num
  function dividedByNumber(uint num) public {
  result = result / num;
 }


}
