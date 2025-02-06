// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {Script} from "forge-std/Script.sol";
import {LegacyNFT} from "../src/LegacyNFT.sol";

contract DeployLegacyNFTSepolia is Script {
    function run() external returns (LegacyNFT) {
        // Start broadcasting the transaction
        vm.startBroadcast();

        // Deploy the SimpleERC721 contract
        LegacyNFT legacyNFT = new LegacyNFT();

        // Stop broadcasting the transaction
        vm.stopBroadcast();

        return legacyNFT;
    }
}

// to deploy run: 'source .env' AND 'forge script script/DeployLegacyNFTMainnet.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account mainnetDevKey --sender 0x759941ECB2B2961566C94e4dB53ae3EeC35F980c'
