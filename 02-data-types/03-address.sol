pragma solidity ^0.4.11;

contract Example {

  address someAddress

  function faucet(uint amountInWei){
    someAddress = msg.sender;
    uint addressBalance = someAddress.balance
    if (addressBalance < amountInWei && this.balance > amountInWei){
      someAddress.transfer(amountInWei)
    }
  }
}
