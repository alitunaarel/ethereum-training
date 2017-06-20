pragma solidity ^0.4.11;

contract Example {

  address public seller;

  modifier onlySeller() { // Modifier
      require(msg.sender == seller);
      _;
  }

  modifier onlyAfter(uint theTime) { // Modifier with parameters
      require(now <= theTime);
      _;
  }

  function abort() onlySeller onlyAfter(1497971499) { // Modifier usage
      // ...
  }

}
