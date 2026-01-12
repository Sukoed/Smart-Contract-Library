// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SKDMarketplace {
    struct Listing {
        address seller;
        uint256 price;
        bool isActive;
    }

    mapping(uint256 => Listing) public listings;
    uint256 public totalListings;

    event ItemListed(uint256 indexed id, address seller, uint256 price);

    function listItems(uint256 _id, uint256 _price) public {
        require(_price > 0, "Price must be above zero");
        listings[_id] = Listing(msg.sender, _price, true);
        totalListings++;
        emit ItemListed(_id, msg.sender, _price);
    }

    function cancelListing(uint256 _id) public {
        require(listings[_id].seller == msg.sender, "Not the seller");
        listings[_id].isActive = false;
    }
}
