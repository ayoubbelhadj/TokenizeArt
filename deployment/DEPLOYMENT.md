# Deployment

The contract is deployed with **Remix IDE + MetaMask** on the **Ethereum Sepolia** testnet. There is no deploy script or private key in this repo — MetaMask signs the deployment transaction, so the key never leaves the wallet.

## Deployed instance
- Contract address: `0x215939E08c245Dd48140E4AEb23e8616c4784496`
- Network: Sepolia (chain id 11155111)
- Explorer: `https://sepolia.etherscan.io/address/0x215939E08c245Dd48140E4AEb23e8616c4784496`

## How to deploy (Remix)
1. Open https://remix.ethereum.org and add `DavinciArt42.sol` (from `code/`).
2. **Solidity Compiler** tab → set the compiler to **0.8.24+** → Compile.
3. **Deploy & Run Transactions** tab → Environment: **Injected Provider - MetaMask**, with MetaMask switched to **Sepolia**.
4. Select the `DavinciArt42` contract → **Deploy** → confirm in MetaMask.
5. Copy the deployed contract address from "Deployed Contracts".
