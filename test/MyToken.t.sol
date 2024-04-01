// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken public token;
    address public deployer = address(1);

    function setUp() public{
        vm.prank(deployer);
        token = new MyToken(1000);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000000000000000000);
        assertEq(token.balanceOf(deployer), 1000000000000000000000);
    }

    function testTokenDescription() public {
        string memory expectedDescription = "This is my first ERC20 token created with Foundry!";
        assertEq(token.tokenDescription(), expectedDescription);
    }
}