// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract UnsafeV2 is Initializable {
    // Safe - constants and immutables
    uint public constant MY_CONSTANT = 111;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint public immutable MY_IMMUTABLE;

    address public owner;
    uint public val;
    uint public start;
    address public safeNewStateVar;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(uint _x) {
        // owner = msg.sender;
        MY_IMMUTABLE = _x;
    }

    function inc() external {
        val += 1;
    }
}