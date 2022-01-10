// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract UnsafeV1 is Initializable {
    // Safe - constants and immutables
    uint public constant MY_CONSTANT = 111;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint public immutable MY_IMMUTABLE;

    // Unsafe - constructor
    address public owner;
    // uint public val = 123;
    uint public val;
    // uint public start = block.timestamp;
    uint public start;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(uint _x) {
        // owner = msg.sender;
        MY_IMMUTABLE = _x;
    }

    // bool public initialized;

    // modifier notInitialized() {
    //     require(!initialized, "already initialized");
    //     _;
    //     initialized = true;
    // }

    // Initialize - replaces constructor, can only call once
    function initialize(uint _val) external initializer {
        owner = msg.sender;
        val = _val;
        start = block.timestamp;
    }

    // Unsafe - selfdesctruct
    // function kill() external {
    //     selfdestruct(payable(address(0)));
    // }
}