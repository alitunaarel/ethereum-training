pragma solidity ^0.4.11;

contract Example {

  uint someValue;

  function storeSomething(uint aValue) { // Function that modifies state
      someValue = aValue;
  }

  function getSomething() constant returns (uint) { // Function thast does not modify state
      return someValue;
  }

  function getSomethingElse() constant returns (uint myValue) { // Function with named return variables
      myValue = someValue;
  }
}
