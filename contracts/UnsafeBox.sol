// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract UnsafeBox {
    address public owner;
    uint public val = 123;

    constructor(uint _val) {
        val = _val;
    }

    function inc() external {
        val += 1;
    }

    function kill() external {
        selfdestruct(payable(msg.sender));
    }
}