// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {invariantContract} from "../src/Counter.sol";

contract CounterTest is Test {
     invariantContract public contractI;

     function setUp() public {
         contractI = new invariantContract();
     }

     function testFuzz_countEqualsToZero(uint256 data) public {
         contractI.changingCount(data);
         assert(contractI.count() == 0);
     }
}
