pragma solidity ^0.4.11;

contract Example {

  mapping(address => uint) bids;

  function bid() payable { // needed to accept ETH
      bids[msg.sender] = msg.value;
  }

}
