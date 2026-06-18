# Documentation — DavinciArt42

## What this is
DavinciArt42 is an ERC-721 NFT on the Ethereum Sepolia testnet. One token (#0) is minted; its artwork (a Da Vinci–style image containing 42) and its metadata are stored on IPFS.

## How it works
The token stores a `tokenURI` — an `ipfs://` link to a metadata JSON file. That JSON holds the name (with 42), a description, the image link, and the artist (`abelhadj`). A wallet or marketplace reads `tokenURI`, fetches the JSON, then fetches the image. Only the link is stored on-chain — never the image itself.

## Actions
- `mintNFT(to, uri)` — owner-only; creates a token and sets its metadata link.
- `ownerOf(tokenId)` — returns a token's owner (proof of ownership).
- `tokenURI(tokenId)` — returns a token's metadata link.
- `balanceOf(owner)` — number of tokens an address holds.
- `transferFrom` / `safeTransferFrom` — move a token to another address.
- `approve` / `setApprovalForAll` — authorize another address to move your token(s).
- `transferOwnership` / `renounceOwnership` — manage the contract owner (admin).

## Ownership
Two distinct layers: the **contract owner** (the deployer — the only address allowed to mint) and the **token owner** (`ownerOf` — whoever currently holds a token).

## Deploying and minting
- Deploy: see the `deployment/` folder.
- Mint: see the `mint/` folder.

## Metadata & IPFS
- Metadata CID: `bafkreibfcl32ryrijljxamybled5nqwtmq4xmkiz7xn7tmfofhfsrahzxu`
- Artist: `abelhadj`; the work name contains 42.
- Stored on IPFS (pinned with Pinata); referenced by the token's `tokenURI`.

For the full conceptual background (blockchain, ERC-721, IPFS, ownership), see `THEORY.md`.
