pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    uint8 private constant _decimals = 18;

    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        _mint(msg.sender, initialSupply * 10 ** _decimals);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
}