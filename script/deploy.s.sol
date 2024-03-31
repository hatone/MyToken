// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/MyToken.sol";
import "forge-std/Script.sol";

contract Deploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        new MyToken(0);
        vm.stopBroadcast();
    }
}