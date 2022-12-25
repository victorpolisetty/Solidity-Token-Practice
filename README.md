# SolidityTokenPractice

Token Hard:

1. Created a function to be able to add 5 tokens at a time ONLY if you are the address who deployed the contract. This check is done through the onlyOwner modifier, which requires that the caller of a function with this modifier is the owner of the contract.
2. Furthermore, the balanceOf and transfer function were respectivally created according to the ERC20 standards found at https://ethereum.org/en/developers/docs/standards/tokens/erc-20/

Token Easy:

1. Created a contract inherits the functions that OpenZeppelin have already created in their ERC20 file.
2. Inherited the premade _mint() function to be able to mint the specified amount of tokens, and similarly to "Token Hard", requires that the owner of the contract is the one calling the _mint() function.
