# Project Title
Module-3 MetaCrafters: Types of Functions - ETH + AVAX
## Description
This is a  Solidity smart contract, called UniqueOwner, creates an ERC20 token where only the contract owner has the privilege of minting new tokens, while any user can transfer and burn tokens. The contract does not use OpenZeppelin's Ownable contract but implements custom ownership logic to handle owner-specific actions, such as minting tokens
**Functionality**
Only contract owner should be able to mint tokens
Any user can transfer tokens
Any user can burn tokens
## Getting Started
### Installing
You first need to have a metamask or any digital wallet to connect to any any network so that transaction could be established.

### Executing program
  * Open remix.ethereum.org (an online code editor for solidity by Ethereum)
  * Open UniqueOwner.sol given in this repository.
  * Create a ownable contract (custom or through OpenZeppelin’s Ownable contract) .
  * compile the code.
  * selct the network from the options i have used metamasks testnet network(sepolia testnet).
  * You can also use this method :
      *  Run the hardhat node locally using the npx hardhat node command( Select the Dev Hardhat provider from the environment in the deploy tab of the sidebar. It 
         will  automatically detect your local hardhat node running in your pc.)
  * Now deploy the contract by passing required arguments like (Name ,Symbol, initial_amount).
  * Now you can verify or each transaction through the Etherscan.
## Features:
Transfer token from one address to another address
Minting token (Minting can be done by the owner only.)
Burning token to reduce it's supply.
Burning and transfer can be done by any user.
## Help
1. To execute this program on testnet you need to have some balnce in your wallet . Like i have used sepolia so must have some ETH (for gas fees) to execute the program. you can get some test ethers throgh this link  ( https://cloud.google.com/application/web3/faucet)
2. You need to chnage the account address to verify that only the owner can mint the tokens.
## Authors
Name - Ashish Kumar Saurav
Mail-Id - sauravashish.0000@gmail.com
## License

This project is licensed under the MIT License.
