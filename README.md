# README

## Overview

This repository contains my files for the Module 3 project in the ETH + AVAX Proof: Intermediate EVM Course. It holds a contract named `NewToken.sol`, which is a smart contract for an ERC20 token on the Ethereum blockchain. The contract includes functionalities for minting, transferring, and burning tokens. The key functionalities of the contract are:

- `mintTokens(address to, uint256 amount)`: Allows the owner to mint new tokens to a specified address.
- `transferTokens(address to, uint256 amount)`: Allows any user to transfer tokens to another address.
- `burnTokens(uint256 amount)`: Allows any user to burn their own tokens.

## The Code

###ERC20 Constructor
The constructor function initializes the NewToken contract by calling the ERC20 constructor with the name "NewTokenName" and the symbol "NewTokenSymbol". It also sets the ownerAddress to the address of the account that deploys the contract (msg.sender), designating this account as the owner of the contract.

### onlyOwner Modifier
The onlyOwner modifier is used to restrict access to certain functions, ensuring that only the owner of the contract can execute them. It does this by checking if the msg.sender is the same as the ownerAddress. If the check fails, the transaction is reverted with the message "Caller is not the owner".
https://www.loom.com/share/57efdcd4da8c4b88b6c8081b372dbab0?sid=a9a1cdce-788f-4307-b3cf-d7f0877e14bb

##  Functions

### mintTokens - The mintTokens function allows the owner to create new tokens and assign them to a specified address. It accepts two parameters: to, the address of the recipient, and amount, the number of tokens to be minted. The function is protected by the onlyOwner modifier, ensuring that only the contract owner can mint tokens. When called, it invokes the _mint function to increase the total supply and update the balance of the specified address.

### transferTokens - The transferTokens function enables any user to transfer tokens from their account to another specified address. It takes two parameters: to, the recipient address, and amount, the number of tokens to be transferred. This function overrides the default transfer function provided by the ERC20 standard, facilitating the transfer of tokens between users. When executed, it returns a boolean value indicating the success of the transfer.

### burnTokens - The burnTokens function allows any user to destroy a specified number of their own tokens, reducing the total supply. It accepts one parameter, amount, which is the number of tokens to be burned. When called, it invokes the _burn function, which decreases the user's balance and the total token supply by the specified amount. This function does not require any special permissions, meaning any token holder can burn their own tokens as desired.

## Authors
Angel Cruz - (https://github.com/PiiDeeGy)
