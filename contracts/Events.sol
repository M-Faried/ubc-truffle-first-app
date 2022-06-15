pragma solidity ^0.8.0;

contract EventsContract {
    // Represents the time when the bidding will end.
    uint biddingEnds = block.timestamp + 5 days;

    struct HighBidder {
        address bidder;
        string  bidderName;
        uint    bid;
    }

    HighBidder public highBidder;

    // Event emitted when the bid is successfull.
    event NewHighBid(address who, string name, uint howmuch);

    // Event emitted when the bid is refused.
    event BiddingFailed(address who, string name, uint howmuch);

    modifier timed {
        if(block.timestamp < biddingEnds)
            _;
        else
            revert();
    }

    constructor() {
        highBidder.bid = 1 ether;        
    }

    function bid (string memory bidderName) payable public timed {
        if(msg.value > highBidder.bid){
            highBidder.bidder = msg.sender;
            highBidder.bidderName = bidderName;
            highBidder.bid = msg.value;

            // Emmitting the event when the bid is accepted.
            emit NewHighBid(msg.sender, bidderName, msg.value);
        }
        else {
            // Emitting the bidding failed event.
            emit BiddingFailed(msg.sender, bidderName, msg.value);

            // Throwing an exception to return the ethers.
            revert();
        }

    }

}