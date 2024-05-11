// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract invariantContract {
    uint256 public count;

    uint256 private hidden;

    function changingCount(uint256 _data) public {
         if(hidden == 7) {
            count = _data;
         }
         hidden = _data;
    }
}