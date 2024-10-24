// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Script.sol";
import "src/LegacyNFT.sol";

contract MintLegacyNFT is Script {
    address public constant MULTISIG_WALLET = 0x0000000000000000000000000000000000000000; // Replace with your deployed MultisigWallet contract address
    address public constant LEGACY_NFT_ADDRESS = 0x0000000000000000000000000000000000000000; // Replace with your deployed LegacyNFT contract address
    LegacyNFT public legacyNFT;

    function setUp() public {
        legacyNFT = LegacyNFT(LEGACY_NFT_ADDRESS);
    }

    function run() external {
        uint256 tokenId = 1; // Token ID (update accordingly for each minting)
        string memory metadataURI = "QmYourMetadataCID"; // Replace with the actual URI/CID of the metadata

        vm.startBroadcast();
        legacyNFT.mint(MULTISIG_WALLET, tokenId, metadataURI);
        vm.stopBroadcast();
    }
}

// source .env
// forge script script/MintLegacyNFT.s.sol --rpc-url $ANVIL_RPC_URL --broadcast --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d
// forge script script/MintLegacyNFT.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account devKey --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d
// forge script script/MintLegacyNFT.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account mainKey --sender 0x0000000000000000000000000000000000000000
