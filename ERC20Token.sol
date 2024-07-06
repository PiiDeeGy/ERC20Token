// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NewToken is ERC20 {
    address public ownerAddress;

    constructor() ERC20("NewTokenName", "NewTokenSymbol") {
        ownerAddress = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == ownerAddress, "Caller is not the owner");
        _;
    }

    // Only owner can mint tokens to specified address
    function mintTokens(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Transfer (any user)
    function transferTokens(address to, uint256 amount) public override returns (bool) {
        return transfer(to, amount);
    }

    // Burn (any user)
    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
