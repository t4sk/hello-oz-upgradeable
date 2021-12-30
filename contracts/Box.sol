// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Box {
    uint public val;

    function set(uint _val) external {
        val = _val;
    }
}