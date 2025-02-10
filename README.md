# LegacyNFT

A straightforward ERC721 implementation using [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) libraries. This contract allows the **owner** (deployer) to mint and any token holder to burn their NFT.
Deployed on the Ethereum Mainnet at '0x007392c33CCe375634d264a42cDCB21fbFbE47aa'
Metadata uploaded to IPFS (https://ipfs.io/ipfs/): 
Web 3 Innovation Lab (Token ID: ‘1’): 'bafkreigqtvo4qowmivpzvfnjxyimawhzi2uys6gzmv6ragmkzzmqukiiti' 
https://ipfs.io/ipfs/bafkreigqtvo4qowmivpzvfnjxyimawhzi2uys6gzmv6ragmkzzmqukiiti

‘Web3 Ideation’ (Token ID: ‘2’): 'bafkreigwyj6kz7bawjh3t34pol5smsvyatmvo6kd6qabuite34mrutnpbe'
https://ipfs.io/ipfs/bafkreigwyj6kz7bawjh3t34pol5smsvyatmvo6kd6qabuite34mrutnpbe

‘Ideation Pool’ (Token ID: ‘3’): 'bafkreiea637wfe3xfuk5omgs6alrlrtgyyaqa4kkq5q7spo3sqmnpnl2oq'
https://ipfs.io/ipfs/bafkreiea637wfe3xfuk5omgs6alrlrtgyyaqa4kkq5q7spo3sqmnpnl2oq

‘Ideation Market’ (Token ID: ‘4’): 'bafkreif5qhbet4fagesxfvke64fb2rble72ac5l75w26repomhat7bhcwq'
https://ipfs.io/ipfs/bafkreif5qhbet4fagesxfvke64fb2rble72ac5l75w26repomhat7bhcwq

‘Ideation Hive’ (Token ID: ‘5’): 'bafkreih6uaq2anzkcofhqtuw2tkucnrx4yxz4bij4f6gxsnhpj4et4tfky'
https://ipfs.io/ipfs/bafkreih6uaq2anzkcofhqtuw2tkucnrx4yxz4bij4f6gxsnhpj4et4tfky

‘Ideation’ Game (Token ID: ‘6’): 'bafkreiex7i5nr2ihyk3ptlengivnbpxzpo44vz7b53vamtnb3bafe6huyu'
https://ipfs.io/ipfs/bafkreiex7i5nr2ihyk3ptlengivnbpxzpo44vz7b53vamtnb3bafe6huyu

‘Ideation’ DAO (Token ID: ‘7’): 'bafkreib4h3xta2psda43rb2qotciq4onpgqhrgeenzpmg2jb7w72yqid7u'
https://ipfs.io/ipfs/bafkreib4h3xta2psda43rb2qotciq4onpgqhrgeenzpmg2jb7w72yqid7u

---

Minting Info

---

legacy nft contract: 0x007392c33CCe375634d264a42cDCB21fbFbE47aa

---

Web 3 Innovation Lab ✅

TokenId
1

To
0x66dcc49c47ebc505a4b560fD14Dc143f0098407f

URI
https://ipfs.io/ipfs/bafkreigqtvo4qowmivpzvfnjxyimawhzi2uys6gzmv6ragmkzzmqukiiti

---

Web3 Ideation ✅

TokenId
2

To
0xd5A4Ed9d14bc273ce995B4E7E8fa0a21E59F8F3b

URI
https://ipfs.io/ipfs/bafkreigwyj6kz7bawjh3t34pol5smsvyatmvo6kd6qabuite34mrutnpbe

---

Ideation Pool ✅

TokenId
3

To
0x66dcc49c47ebc505a4b560fD14Dc143f0098407f

URI
https://ipfs.io/ipfs/bafkreiea637wfe3xfuk5omgs6alrlrtgyyaqa4kkq5q7spo3sqmnpnl2oq

---

Ideation Market ✅

TokenId
4

To
0x5a7c04218942c1c9baED35289A9b3eDfEd6F216F

URI
https://ipfs.io/ipfs/bafkreif5qhbet4fagesxfvke64fb2rble72ac5l75w26repomhat7bhcwq

---

Ideation Hive ✅

TokenId
5

To
0xBae2957B8c6CC7D39b7fDF5e82Cf8C467B86Be40

URI
https://ipfs.io/ipfs/bafkreih6uaq2anzkcofhqtuw2tkucnrx4yxz4bij4f6gxsnhpj4et4tfky

---

Ideation Game ✅

TokenId
6

To
0x66dcc49c47ebc505a4b560fD14Dc143f0098407f

URI
https://ipfs.io/ipfs/bafkreiex7i5nr2ihyk3ptlengivnbpxzpo44vz7b53vamtnb3bafe6huyu

---

Ideation DAO

TokenId
7

To
0x66dcc49c47ebc505a4b560fD14Dc143f0098407f

URI
https://ipfs.io/ipfs/bafkreib4h3xta2psda43rb2qotciq4onpgqhrgeenzpmg2jb7w72yqid7u




---

## Overview

- **Contract Name:** `LegacyNFT`
- **Symbol:** `W3IL`
- **Inherits**:
  - `ERC721Enumerable` for enumeration of all token IDs.
  - `ERC721URIStorage` for on-chain storage of token URIs.
  - `Ownable` restricting certain actions to the contract owner.
- **Key Features**:
  - **Minting**: Only the contract owner can mint new NFTs (`mint`).
  - **Burning**: Token owners can burn their own NFTs.
  - **Events**: Logs when tokens are minted (`TokenMinted`) or burned (`TokenBurned`).

---

## Deployment

- **Prerequisites**:
  - Make sure you have [Foundry](https://book.getfoundry.sh/) or [Hardhat](https://hardhat.org/) set up.
  - The contract uses the following OpenZeppelin imports:
    - `@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol`
    - `@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol`
    - `@openzeppelin/contracts/access/Ownable.sol`

- **Compile & Deploy**:
  - Using Foundry:
    ```bash
    forge build
    forge create --rpc-url <YOUR_RPC_URL> \
                 --private-key <YOUR_PRIVATE_KEY> \
                 LegacyNFT
    ```
  - Using Hardhat:
    1. Add the contract in `contracts/LegacyNFT.sol`.
    2. In your deployment script, call `deploy` on `LegacyNFT`.
    3. `npx hardhat run scripts/deploy.js --network <YOUR_NETWORK>`.

---

## Usage

1. **Minting**:
   ```solidity
   function mint(address recipient, uint256 tokenId, string memory _tokenURI) public onlyOwner
   ```
   - Only the contract owner can call this.
   - `recipient`: The address receiving the newly minted token.
   - `tokenId`: A unique ID for the token.
   - `_tokenURI`: Metadata URI (e.g., IPFS link).
   - Emits `TokenMinted(tokenId, recipient, _tokenURI)`.

2. **Burning**:
   ```solidity
   function burn(uint256 tokenId) public
   ```
   - The caller must be the **owner** of the NFT.
   - Emits `TokenBurned(tokenId, msg.sender)`.

3. **Reading Token URI**:
   ```solidity
   function tokenURI(uint256 tokenId) public view override returns (string memory)
   ```
   - Returns the previously set URI for the token.

4. **Enumerable Extensions**:
   - Since `LegacyNFT` inherits `ERC721Enumerable`, you can query:
     - `totalSupply()`
     - `tokenByIndex(uint256 index)`
     - `tokenOfOwnerByIndex(address owner, uint256 index)`

---

## Events

- **`TokenMinted(uint256 tokenId, address recipient, string tokenURI)`**
  - Emitted when a new token is minted.
- **`TokenBurned(uint256 tokenId, address owner)`**
  - Emitted when a token is burned.

---

## License

This project is licensed under the [MIT License](LICENSE). Please see the `third-party-licenses` folder for details regarding OpenZeppelin and other dependencies.