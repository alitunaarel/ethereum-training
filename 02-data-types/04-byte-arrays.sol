pragma solidity ^0.4.11;

contract Example {

  bytes32 reasonableAmountOfData;
  byte1 oneByteOfData;

  bytes arbitraryLengthData;

  // 1. usage of bytes is very expensive in gas costs
  // 2. you can not pass arbitrary length variables between contracts
  // 3. you can receive and send them from the outside world

}
