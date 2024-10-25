// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Script.sol";
import "src/LegacyNFT.sol";

contract MintLegacyNFT is Script {
    address public constant MULTISIG_WALLET = 0x92De4c3ccfBF089471eAC7cF84139243334B48C2; // Replace with your deployed MultisigWallet contract address
    address public constant LEGACY_NFT_ADDRESS = 0x3d5E2dA4970c00B0Eb7C5cc7644f2Cd1fd1872B6; // Replace with your deployed LegacyNFT contract address
    LegacyNFT public legacyNFT;

    function setUp() public {
        legacyNFT = LegacyNFT(LEGACY_NFT_ADDRESS);
    }

    function run() external {
        uint256 tokenId = 1; // Token ID (update accordingly for each minting)
        string memory metadataURI = "https://ipfs.io/ipfs/bafkreihnj7nlz6whld5all2d5ikt2whfstbfotkpbtwyhvi44k4cuvwwmq"; // Replace with the actual URI/CID of the metadata

        vm.startBroadcast();
        legacyNFT.mint(MULTISIG_WALLET, tokenId, metadataURI);
        vm.stopBroadcast();
    }
}

// forge script script/MintVideo.s.sol --rpc-url http://localhost:8545 --broadcast --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
// source .env
// forge script script/MintVideo.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account devKey --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d
// forge script script/MintVideo.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account mainKey --sender 0x0000000000000000000000000000000000000000
