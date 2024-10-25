expectation:
-multiple mp4 files will be uploaded on the IPFS, each of them will be minted in this NFT contract.
-For that I need to create the Metadata json and upload each on the IPFS
-In the metadata there will be a link to the video and hashes of our names as well as the usual metadata like name description author and so on
-everytime a video gets finished I will upload it, create the metadata and mint it in this contract.
-It should have a token ID as a counting number since this is how most NFTs work.
-I guess I make the minting process very customizable that everytime I mint I input the URL of the metadata with the minting call manually
-the owner of the NFTs will be the multisig wallets address.
-all that should be throughouthly tested on the sepolia testnet with a dummy video file (but that video file should have a similar Size as what I expect the real videos to be)
-Name of the NFT Contract will be "web3ideation Legacy" and Symbol "W3IL"


create an thumbnail by screenshoting the first slide that shows the title of the video and make this screenshot the square resolution or whatever what niklas uses for his thumbnails (300x300 or 500x500?)
use console.web3.storage to upload the Video file but make sure "wrap in directory" is unchecked! (5GB are free)
use the CID to create a metadata.json
create hash of names (for example with this website https://keccak-256.4tools.net/) and double check the hash



uploaded test Video at CID bafybeicqeknnmjdrpzpjqgfcrp4nx5ly6a2jhr7bspvhfszdxd4aqb5p5u
https://ipfs.io/ipfs/bafybeicqeknnmjdrpzpjqgfcrp4nx5ly6a2jhr7bspvhfszdxd4aqb5p5u
uploaded test preview at
https://ipfs.io/ipfs/bafkreigl763gnxtfob5h5gmd5pbklufn564llqmavxa7hdcmnirnw72pwu
uploaded test metadata at
https://ipfs.io/ipfs/bafkreihnj7nlz6whld5all2d5ikt2whfstbfotkpbtwyhvi44k4cuvwwmq


Anvil deployment:
owners[0] = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
owners[1] = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
owners[2] = 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC;
owners[3] = 0x90F79bf6EB2c4f870365E785982E1f101E93b906;
owners[4] = 0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65;
deployer 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
multisig wallet 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512
legacy nft 0x5fbdb2315678afecb367f032d93f642f64180aa3


owner1 propose the transfer of the nft to owner5 
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "safeTransferFromERC721(address,address,address,uint256)" 0x5fbdb2315678afecb367f032d93f642f64180aa3 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65 1 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

owner2 confirms
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "confirmTransaction(uint256)" 0 --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d

owner3 confirms and automatically executes
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "confirmTransaction(uint256)" 0 --private-key 0x5de4111afa1a4b94908f83103eb1f1706367c2e68ca870fc3fb9a804cdab365a

expect owner of the legacyNFT tokenId 1 to be owner5 (0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65)
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3 "ownerOf(uint256)" 1 --rpc-url http://127.0.0.1:8545

-

next step: now test it on sepolia (deploy an multisig instance with 3 owners, deploy the legacy nft, mint using the mintvideo script, and then use etherscans UI to send the legacy nft away, and also check other functions of the legacy nft if tthey work as intended (especially the ones i overrode))



sepolia deployment
owners[0] = 0xE8dF60a93b2B328397a8CBf73f0d732aaa11e33D;
owners[1] = 0x8a200122f666af83aF2D4f425aC7A35fa5491ca7;
owners[2] = 0xEdC9b2CA57635C98064988A3D3Ad24f9Bb9ADc6A;
deployer 0xE8dF60a93b2B328397a8CBf73f0d732aaa11e33D
multisig wallet 0x92De4 c3ccfBF089471eAC7cF84139243334B48C2
legacy nft 0x3d5E2dA4970c00B0Eb7C5cc7644f2Cd1fd1872B6


ok deployment, minting und transfer hat alles geklappt
alle funktionen scheinen zu passen
reicht das dann an tests für den mainnet deploy?

ja alles getestet und fertig für den mainnet deploy!
- Aber besser diese notizen privat speichern und das readme von cGPT erzeugen lassen