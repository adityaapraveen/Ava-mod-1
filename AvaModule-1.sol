// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bank {
    uint public bal;

    function deposit(uint amt) public {
        require(amt > 100, "Amt must be greater than hundred");
        bal += amt;
    }

    function addition(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;
        assert(sum >= a && sum <= b);
        return sum;
    }

    function reverting() public pure {
        revert("This transaction is not allowed");
    }
}