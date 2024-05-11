// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
       if(newNumber == 2){
           number = 2;
       }
       if(newNumber == 7){
           number = 3;
       }
    }

    function increment() public {
        number++;
    }
}
