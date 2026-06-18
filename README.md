# DavinciArt42 — TokenizeArt (ERC-721 NFT)

A one-of-a-kind NFT (non-fungible token) built for the 42 **TokenizeArt** project. The artwork is a cyber-Renaissance reinterpretation of a Leonardo da Vinci piece featuring the number **42**. The image and its metadata are stored on **IPFS**, and the token is minted on the **Ethereum Sepolia** test network.

## Deployed contract

- **Contract address:** `0x215939E08c245Dd48140E4AEb23e8616c4784496`
- **Network:** Ethereum Sepolia testnet (chain id 11155111)
- **Standard:** ERC-721
- **Name / symbol:** DavinciArt42 / DV42
- **Explorer:** `https://sepolia.etherscan.io/address/0x215939E08c245Dd48140E4AEb23e8616c4784496`

## Choices and reasons

**Blockchain — Ethereum (Sepolia testnet).** Ethereum is the most mature smart-contract platform and the home of the original ERC-721 NFT standard, which guarantees broad wallet and marketplace support. I used the Sepolia test network so the project costs nothing — test ETH is free from faucets and no real money is ever involved. It was also the platform I used for the Tokenizer project, so the toolchain was familiar.

**Language — Solidity.** Solidity is the native language of the Ethereum Virtual Machine and the standard choice for writing ERC-721 contracts, so it was the natural fit.

**Development tools — Remix IDE + MetaMask.** Remix is a browser-based Solidity IDE, so there is no local setup to manage. MetaMask acts as the wallet and signer: it holds the private key and signs every transaction, which means no secret key or API key ever lives in this repository. Compilation, deployment, and minting are all done through the Remix interface.

**Libraries — OpenZeppelin (v5).** Rather than writing token and ownership logic from scratch (which is risky), the contract builds on OpenZeppelin's audited implementations: `ERC721URIStorage` for per-token metadata links, and `Ownable` to restrict minting to the contract owner.

**Storage — IPFS (pinned with Pinata).** The subject requires distributed storage, so the image and the metadata JSON live on IPFS, a content-addressed network where each file's address (its CID) is a hash of its contents — tamper-evident and not dependent on any single server. The contract stores only the `ipfs://` link to the metadata.

## How it works

The contract stores one `tokenURI` per token — a link to a metadata JSON file on IPFS. That JSON holds the token's name (containing 42), a description, the `ipfs://` link to the image, and the artist (`abelhadj`). Minting (`mintNFT`) creates the token and assigns it to the owner; `ownerOf` confirms ownership. Full details are in the `documentation/` folder.

## Repository structure

```
README.md          this file
code/              the Solidity contract (DavinciArt42.sol)
deployment/        how to deploy the contract (Remix)
mint/              how to mint the NFT (Remix)
documentation/     how the project works, theory, and the metadata
```

## Metadata

- **Artist:** abelhadj (42 login)
- **Work name:** contains "42"
- **Image & metadata:** stored on IPFS, referenced by the token's `tokenURI`