// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {invariantContract} from "../src/Counter.sol";
import {Test, console} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract invarianttest2 is StdInvariant, Test {
    invariantContract public contractI;
   
    function setUp() public {
         contractI = new invariantContract();
         targetContract(address(contractI));
    }

    function invariant_countEqualsToZero() public view {
            assert(contractI.count() == 0);
    }
}