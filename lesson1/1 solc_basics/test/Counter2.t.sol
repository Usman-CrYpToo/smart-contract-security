// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract Counter2Test is StdInvariant,Test {
    Counter public counter;
     
     function setUp() public {
         counter = new Counter();
         targetContract(address(counter));
     }

     function innvariant_numberEqualToZero() public  {
         assert(counter.number() == 0);
     }

}