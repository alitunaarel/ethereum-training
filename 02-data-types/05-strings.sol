pragma solidity ^0.4.11;

contract Example {

  string arbitraryLengthUTF8String;

  // 1. usage of string is very expensive in gas costs
  // 2. you can not pass arbitrary length variables between contracts
  // 3. you can receive and send them from the outside world

  // if possible, put string data in "bytes1-32"!

}
