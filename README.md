This Solidity smart contract, called UniqueOwner, creates an ERC20 token where only the contract owner has the privilege of minting new tokens, while any user can transfer and burn tokens. The contract does not use OpenZeppelin's Ownable contract but implements custom ownership logic to handle owner-specific actions, such as minting tokens.

**Features**
Minting Tokens: Only the contract owner can mint new tokens.
Transferring Tokens: Any user can transfer tokens to other addresses.
Burning Tokens: Any user can burn tokens from their own account.

**Contract Details**
Inheritance
ERC20: Implements the ERC20 token standard.
Ownable: Not used directly in this version, but ownership is managed manually.custom ownership mangement

**Function**
**mintTokens(address recipient, uint256 amount)**
Description: Mints new tokens and transfers them to the specified recipient.
Access: Restricted to the contract owner.
Parameters:
recipient: The address to receive the minted tokens.
amount: The number of tokens to mint.

**burnTokensFrom(address account, uint256 amount)**
Description: Burns tokens from the specified account.
Access: Any user can call this function to burn tokens from any address, provided the account has sufficient balance.
Parameters:
account: The address from which tokens will be burned.
amount: The number of tokens to burn.

**transfer(address recipient, uint256 amount)**
Description: Transfers tokens from the caller’s address to the recipient.
Access: Any user can call this function.
Parameters:
recipient: The address to receive the tokens.
amount: The number of tokens to transfer.

**Deployment**
To deploy the UniqueOwner contract, follow these steps:

**Set Up Your Development Environment:**

Ensure you have a Solidity development environment such as Remix or a local setup with Hardhat or Truffle.
Compile the Contract: i have used remix to deploy this

**Use the Solidity compiler to compile the contract code.
Deploy the Contract:**

Use a deployment script or the Remix IDE to deploy the contract to your desired network (e.g., Ethereum testnet or mainnet).
Interact with the Contract:
**I have used Ethreum testnet.**

