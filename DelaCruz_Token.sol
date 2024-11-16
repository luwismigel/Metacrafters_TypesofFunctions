// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuisToken is ERC20, Ownable {
    constructor() ERC20("Hello World", "HW") Ownable(msg.sender) {}

    function generateTokens(address recipient, uint256 quantity) public onlyOwner {
        _mint(recipient, quantity);
    }

    function destroyTokens(uint256 quantity) public {
        _burn(_msgSender(), quantity);
    }
}
