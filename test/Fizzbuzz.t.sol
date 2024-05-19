// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {Fizzbuzz} from "../src/Fizzbuzz.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";

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

    function test_returns_fizz_when_divisible_by_three(uint256 n) public view {
        vm.assume(n % 3 == 0);
        vm.assume(n % 5 != 0);
        assertEq(fizzbuzz.fizzbuzz(n), "fizz");
    }

    function test_returns_buzz_when_divisible_by_five(uint256 n) public view {
        vm.assume(n % 3 != 0);
        vm.assume(n % 5 == 0);
        assertEq(fizzbuzz.fizzbuzz(n), "buzz");
    }

    function test_returns_fizzbuzz_when_divisible_by_three_and_five(
        uint256 n
    ) public view {
        vm.assume(n % 3 == 0);
        vm.assume(n % 5 == 0);
        assertEq(fizzbuzz.fizzbuzz(n), "fizzbuzz");
    }

    function test_returns_number_as_string_otherwise(uint256 n) public view {
        vm.assume(n % 3 != 0);
        vm.assume(n % 5 != 0);
        assertEq(fizzbuzz.fizzbuzz(n), Strings.toString(n));
    }
}
