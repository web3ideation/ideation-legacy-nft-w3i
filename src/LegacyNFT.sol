// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LegacyNFT is ERC721Enumerable, ERC721URIStorage, Ownable {
    // Event for logging minting of new tokens
    event TokenMinted(uint256 indexed tokenId, address indexed recipient, string tokenURI);
    event TokenBurned(uint256 indexed tokenId, address indexed owner);

    constructor() ERC721("web3ideation Legacy", "W3IL") Ownable(msg.sender) {}

    function mint(address recipient, uint256 tokenId, string memory _tokenURI) public onlyOwner {
        require(_ownerOf(tokenId) == address(0), "Token ID already minted");
        _safeMint(recipient, tokenId);
        _setTokenURI(tokenId, _tokenURI);
        emit TokenMinted(tokenId, recipient, _tokenURI);
    }

    function burn(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "you are not the owner of this NFT");
        _burn(tokenId);
        emit TokenBurned(tokenId, msg.sender);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Enumerable, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function _increaseBalance(address account, uint128 value) internal override(ERC721, ERC721Enumerable) {
        super._increaseBalance(account, value);
    }

    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721, ERC721Enumerable)
        returns (address)
    {
        return super._update(to, tokenId, auth);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }
}
