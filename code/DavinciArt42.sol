// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Import OpenZeppelin's ERC721URIStorage contract which extends ERC721 with URI storage functionality
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
// Import OpenZeppelin's Ownable contract for access control functionality
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title DavinciArt42 — an ERC-721 NFT for the 42 TokenizeArt project
contract DavinciArt42 is ERC721URIStorage, Ownable {
    // Counter that assigns the next unique token id. First NFT minted = token #0.
    uint256 private nextTokenId;

    // Runs once, at deployment.
    // - ERC721(...) sets the collection's name and symbol.
    // - Ownable(msg.sender) makes the deployer the contract owner (the admin).
    constructor() ERC721("DavinciArt42", "DV42") Ownable(msg.sender) {
        nextTokenId = 0; // explicit start (uint256 already defaults to 0)
    }

    // Creates one NFT for `to` and attaches its metadata link `uri`.
    // onlyOwner => only the contract owner (the deployer) can mint.
    function mintNFT(address to, string memory uri) public onlyOwner {
        uint256 tokenId = nextTokenId++; // take current id, then increment
        _safeMint(to, tokenId);          // create token + assign ownership
        _setTokenURI(tokenId, uri);      // attach the ipfs:// metadata link
    }
}