// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../contracts/MyToken.sol";

contract MyTokenTest is Test {
    MyToken public token;
    address public deployer = address(1);

    function setUp() public {
        vm.prank(deployer);
        token = new MyToken(1000);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000);
        assertEq(token.balanceOf(deployer), 1000);
    }
}