// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {Script} from "forge-std/Script.sol";
import {LegacyNFT} from "../src/LegacyNFT.sol";

contract DeployLegacyNFT is Script {
    function run() external returns (LegacyNFT) {
        vm.startBroadcast();
        LegacyNFT legacyNFT = new LegacyNFT();
        vm.stopBroadcast();
        return legacyNFT;
    }
}
