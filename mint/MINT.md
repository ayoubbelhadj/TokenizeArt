# Minting

Minting happens through Remix, on the deployed contract. Only the contract owner (the deployer) can mint, because `mintNFT` is guarded by `onlyOwner`.

## How to mint (Remix)
1. In Remix → **Deployed Contracts**, expand `DavinciArt42`.
2. Call `mintNFT`:
   - `to`: your wallet address (the owner)
   - `uri`: `ipfs://bafkreibfcl32ryrijljxamybled5nqwtmq4xmkiz7xn7tmfofhfsrahzxu`
3. Confirm in MetaMask. This mints token **#0** to your wallet.

## Verify
- `ownerOf(0)` → your wallet address (proof of ownership).
- `tokenURI(0)` → the `ipfs://…` metadata link.

The metadata and the image it points to are pinned on IPFS, so the token renders in any wallet or marketplace that resolves the link.
