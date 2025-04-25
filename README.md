# ERC4626 Token Vault

An ERC4626-compliant vault implementation with fee mechanisms for Polar Token (PT) deposits, this repository contains a Solidity implementation of an ERC4626 vault for Polar Token with integrated fee functionality. Users can deposit PT tokens and receive vault shares (vPT) in return, with an entry fee applied to deposits.

The vault implements standard ERC4626 functionality with added features including configurable entry fees paid to the vault owner and an automatic 10% interest addition on deposits.

`Vault.sol` - The main vault contract extending ERC4626Fees with deposit, mint, withdraw, and redeem functions.

`VaultToken.sol` - A simple ERC20 token implementation representing the underlying Polar Token (PT).

## Usage

Deploy the VaultToken first, then deploy the Vault with the VaultToken address and desired entry fee basis points.

To interact with the vault, users must approve token transfers, then can deposit tokens, mint shares, withdraw assets, or redeem shares using the standard ERC4626 interface. Entry fees are configured at deployment in basis points and paid to the vault owner. The interest mechanism adds 10% to each deposit, sourced from the vault owner.