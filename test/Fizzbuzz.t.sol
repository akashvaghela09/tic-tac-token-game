// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {Fizzbuzz} from "../src/Fizzbuzz.sol";

contract Fizzbuzztest is Test {
    Fizzbuzz internal fizzbuzz;

    function setUp() public {
        fizzbuzz = new Fizzbuzz();
    }

    function test_math() public pure {
        uint256 two = 1 + 1;
        // assertEq(two, 3);
        assertNotEq(two, 3);
    }

    function test_returns_fizz_when_divisible_by_three() public view {
        assertEq(fizzbuzz.fizzbuzz(3), "fizz");
    }

    function test_returns_buzz_when_divisible_by_five() public view {
        assertEq(fizzbuzz.fizzbuzz(5), "buzz");
    }

    function test_returns_number_as_string_otherwise() public view {
        assertEq(fizzbuzz.fizzbuzz(7), "7");
    }
}
