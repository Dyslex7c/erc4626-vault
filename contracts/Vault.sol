// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "./ERC4626Fees.sol";

contract Vault is ERC4626Fees {
    address payable public owner;
    uint256 public entryFeeBasisPoints;

    constructor(IERC20 _asset, uint256 _basisPoints) ERC4626(_asset) ERC20("Vault Polar Token", "vPT") {
        owner = payable(msg.sender);
        entryFeeBasisPoints = _basisPoints;
    }
}