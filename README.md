# Token/TokenFactory Smart Contract

## Token Contract
 The mapping mapping(address => uint256) public balances; in the Token contract.

  This used to keep track of the token balances of each address.

  ```
  - In a token contract, it's common to maintain a ledger or record of token balances for each address that holds the tokens.

  -  The balances mapping allows you to associate a specific address with its corresponding token balance.

 Let's break down the mapping:

1. mapping: This keyword indicates that we are defining a mapping data structure.

2. (address => uint256): It specifies the key-value pair types. In this case, the keys are of type address (Ethereum addresses),
  and the values are of type uint256 (unsigned integers representing token balances).

3. public: This modifier allows the balances mapping to be publicly accessible. It generates 
 an automatically generated getter function that allows other contracts or external entities
  to read the token balances.
 By using the balances mapping, you can easily query and update the token balances of different addresses.
 For example, the transfer function in the Token contract deducts tokens from the sender's balance
   (balances[msg.sender] -= _amount) and adds them to the recipient's balance (balances[_to] += _amount).

// The balances mapping provides a convenient and efficient way to manage and retrieve token balances associated with specific addresses.
```

  ## Token Factory Contract




