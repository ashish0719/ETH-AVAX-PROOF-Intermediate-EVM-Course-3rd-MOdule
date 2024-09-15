// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

// import "@openzeppelin/contracts/access/Ownable.sol";

// contract UniqueOwner is ERC20, Ownable {
//     constructor(
//         string memory name, 
//         string memory symbol, 
//         uint256 initialAmount
//     )

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UniqueOwner is ERC20 {
    address private _contractOwner;

    // Constructor to initialize the contract with name, symbol, and initial supply for the owner
    constructor(
        string memory name, 
        string memory symbol, 
        uint256 initialAmount
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialAmount);  
        _contractOwner = msg.sender;       
    }

    // Modifier to restrict functions to the owner
    modifier onlyOwner() {
        require(msg.sender == _contractOwner, "--------------------Sorry! You are not the owner-------------------------------");
        _;
    }

    // Only the owner can mint new tokens
    function mintTokens(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    // Any user can burn their own tokens
    function burnTokensFrom(address account, uint256 amount) external {
        require(balanceOf(account) >= amount, "Not enough tokens to burn");
        _burn(account, amount);
    }

    // Any user can transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);  
    }
}
