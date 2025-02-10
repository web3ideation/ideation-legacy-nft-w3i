// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Script.sol";
import "src/LegacyNFT.sol";

contract MintVideo is Script {
    address public constant TO = 0x66dcc49c47ebc505a4b560fD14Dc143f0098407f; // To Whom?
    address public constant LEGACY_NFT_ADDRESS = 0x007392c33CCe375634d264a42cDCB21fbFbE47aa; // Mainnet LegacyNFT contract address
    LegacyNFT public legacyNFT;

    function setUp() public {
        legacyNFT = LegacyNFT(LEGACY_NFT_ADDRESS);
    }

    function run() external {
        uint256 tokenId = 7; // Token ID (update accordingly for each minting)
        string memory metadataURI = "https://ipfs.io/ipfs/bafkreib4h3xta2psda43rb2qotciq4onpgqhrgeenzpmg2jb7w72yqid7u"; // Replace with the actual URI/CID of the metadata

        vm.startBroadcast();
        legacyNFT.mint(TO, tokenId, metadataURI);
        vm.stopBroadcast();
    }
}

// forge script script/MintVideo.s.sol --rpc-url http://localhost:8545 --broadcast --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
// source .env
// forge script script/MintVideo.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account devKey --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d

// Mainnet Minting:
// source .env
// forge script script/MintVideo.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --account mainnetDevKey --sender 0x759941ecb2b2961566c94e4db53ae3eec35f980c
