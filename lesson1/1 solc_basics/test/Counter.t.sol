// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
        
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function test_numberEqualToZero() public {
         counter.setNumber(0);
         assert(counter.number() == 0);
    }

    function testFuzz_counterEqualToZero(uint256 x) public {
        console.log("x: ", x);
        counter.setNumber(x);
        assert(counter.number() == 0);
    }

}
