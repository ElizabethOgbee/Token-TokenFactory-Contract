//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Token.sol";

contract TokenFactoryContract{
    address[] public deployedTokens;

    function createToken(
        string memory name_,
        string memory symbol_,
        uint256 totalSupply_
    ) public{
        address newToken = address(new Token(name_, symbol_, totalSupply_));
        deployedTokens.push(newToken);
    }

    function getDeployedToken() public view returns(address[] memory) {
        return deployedTokens;
    }
}





