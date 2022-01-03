// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract UnsafeBox {
    // uint public constant MY_CONSTANT = 789;
    // address public immutable MY_IMMUTABLE = msg.sender;

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