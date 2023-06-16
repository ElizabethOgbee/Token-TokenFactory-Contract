//SPDX-License-Identifier: MIT

// The `Token` contract represents a simple token with a name,
// symbol, total supply, and the ability to transfer tokens between
// addressess 

pragma solidity ^0.8.0;

contract Token{
    string public name;
    string public symbol;
    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balances;
     
     constructor(
         string memory name_,
         string memory symbol_,
         uint256 totalSupply_
     ){
         name = name_;
         symbol = symbol_;
         totalSupply = totalSupply_;
         owner = msg.sender;
         balances[msg.sender] = totalSupply_;
     }

     function transfer(address to_, uint256 amount_) public {
         require(balances[msg.sender] >= amount_, "INSUFFICIENT FUNDS");
         balances[msg.sender] -= amount_;
         balances[to_] += amount_;
     }
}

// The mapping mapping(address => uint256) public balances; in the Token contract
//  is used to keep track of the token balances of each address.

// In a token contract, it's common to maintain a ledger or record of token balances for each address that holds the tokens.
//  The balances mapping allows you to associate a specific address with its corresponding token balance.

// Let's break down the mapping:

// mapping: This keyword indicates that we are defining a mapping data structure.

// (address => uint256): It specifies the key-value pair types. In this case, the keys are of type address (Ethereum addresses),
//  and the values are of type uint256 (unsigned integers representing token balances).
// public: This modifier allows the balances mapping to be publicly accessible. It generates 
// an automatically generated getter function that allows other contracts or external entities
//  to read the token balances.
// By using the balances mapping, you can easily query and update the token balances of different addresses.
//  For example, the transfer function in the Token contract deducts tokens from the sender's balance
//   (balances[msg.sender] -= _amount) and adds them to the recipient's balance (balances[_to] += _amount).

// The balances mapping provides a convenient and efficient way to manage and retrieve token balances associated with specific addresses.