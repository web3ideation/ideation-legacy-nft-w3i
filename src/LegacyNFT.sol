// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LegacyNFT is ERC721, Ownable {
    // Mapping from token ID to IPFS CID
    mapping(uint256 => string) public tokenURIs;

    // Event for logging minting of new tokens
    event TokenMinted(uint256 indexed tokenId, address indexed recipient, string tokenURI);

    constructor() ERC721("web3ideation Legacy", "W3IL") Ownable(msg.sender) {}

    function mint(address recipient, uint256 tokenId, string memory tokenURI) public onlyOwner {
        tokenURIs[tokenId] = tokenURI;
        _safeMint(recipient, tokenId);
        emit TokenMinted(tokenId, recipient, tokenURI);
    }

    // Override tokenURI to return the specific CID for each token
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "ERC721Metadata: URI query for nonexistent token"); // is this more gasefficient than just checking directly the tokenURIs[tokenId] being zero address?
        return tokenURIs[tokenId];
    }

    //!!! ask cGPT which other functionalities this should have and what to watch out for, give it all the contexte of the readme
}
