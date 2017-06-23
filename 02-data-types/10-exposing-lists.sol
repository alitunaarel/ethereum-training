pragma solidity ^0.4.11;

contract Example {

  mapping (address => uint) public ages;
  address[] public ageIndex;

  function setAge(uint age){
    ages[msg.sender] = age;
    ageIndex.push(msg.sender);
  }

  function getAgeIndexLength() constant returns (uint) {
    return ageIndex.length;
  }

  function getAgeAtIndex(uint index) constant returns (address user, uint age) {
    user = ageIndex[index];
    age = ages[user];
  }
}
