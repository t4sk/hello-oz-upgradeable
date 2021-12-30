// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract BoxV2 {
    uint public val;

    function set(uint _val) external {
        val = _val;
    }

    function inc() external {
        val += 1;
    }
}