// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

contract Fizzbuzz {
    function fizzbuzz(uint256 n) public pure returns (string memory) {
        if (n == 5) {
            return "buzz";
        }

        if (n == 3) {
            return "fizz";
        }

        return string(n);
    }
}
