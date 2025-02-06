# LegacyNFT

A straightforward ERC721 implementation using [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) libraries. This contract allows the **owner** (deployer) to mint and any token holder to burn their NFT.
Deployed on the Ethereum Mainnet at '0x007392c33CCe375634d264a42cDCB21fbFbE47aa'
Media uploaded to IPFS (https://ipfs.io/ipfs/): 
Web 3 Innovation Lab (Token ID: ‘1’): 'bafybeiae5q5y5xux7xvtx6qatdwjfitri2aoux75yze6ohrxyzdqxfsivu' 
Thumbnail: 'bafkreigz2c4yzikjqjuzwbergr3vstou7gjoyeb7hjvzu67lil7lkhglf4'
‘Web 3 Ideation’ (Token ID: ‘2’): 'bafybeieyp2mditkztkran7brar2fu6imt4o4fg4prhtjrb2bxe53aqmvcq'
Thumbnail: 'bafkreif5mbynpa3lxnufgljbkdbu2fbeb2s3oivf52kygha36f5sdw4q34'
‘Web 3 Ideation Pool’ (Token ID: ‘3’): 'bafybeierw7ikodpte3pr5lmqyomsgqs4jxv2vt3hdwwfttbvultjozxbsy'
Thumbnail: 'bafkreihmgzwscpcmwdbtqajtl466pqfa5r3tgw74o2ae7v6dr34tap4eku'
‘Web 3 Ideation Market’ (Token ID: ‘4’): 'bafybeidaw4xytm4nv54wxizyfogxinzjhlyljeap3lod6ghqj2egokvq2a'
Thumbnail: 'bafkreibdn7jic53gkgwcmahneulwvzvozsa3erkhaxv25hadnve2ndemwq'
‘Web 3 Ideation Hive’ (Token ID: ‘5’): 'bafybeih2kgrbcl5dkvj6ji5b5im2z5vfjsj5jq6dr5fx2xe37yrgtpkqxm'
Thumbnail: 'bafkreiaxoorspptb4ehqtzedlokqt3we5u6fhegj6klozdxyafvzxzjiui'
‘Web 3 Ideation’ Game (Token ID: ‘6’): 'bafybeicwcvjnzte43l43zia5tv6ysx4oqw4wrj2mpw4k6tsf7r5pw7xnui'
Thumbnail: 'bafkreifg4tnc7juvzjk5p7m5auvumrpqvk5k5zdqmuibvc4mnesd3tr2ra'
‘Web 3 Ideation’ DAO (Token ID: ‘7’): 'bafybeido5mo2g3upmtedfhtz3j2guzdze4hdckhhxqe32drky5nb6lfqw4'
Thumbnail: 'bafkreigxlq4xum7d77pmonf4bovm2zrh6qaldtdo4pvdy3o3tiw3czknoq'


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