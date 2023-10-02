// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HugsToken is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 1000000 * (10 ** uint256(decimals()));

    constructor() ERC20("Hugs", "HUGS") {
        _mint(msg.sender, INITIAL_SUPPLY);  // Mint the initial supply to the contract deployer
    }

    function donate(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);  // Burn the donated amount from the sender's balance
        // Implement your donation logic here
    }
}
