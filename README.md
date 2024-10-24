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

