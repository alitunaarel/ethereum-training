pragma solidity ^0.4.11;

contract Example {

  event HighestBidIncreased(address bidder, uint amount); // Event

  function bid() payable {
      // ...
      HighestBidIncreased(msg.sender, msg.value); // Triggering event
  }

}
