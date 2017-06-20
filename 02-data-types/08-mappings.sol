pragma solidity ^0.4.11;

contract Example {

  mapping(string => uint) balances;
  mapping(address => mapping (string => uint)) custodians;

  function getBalance(string key) constant return (uint) {
    return balances[key]
  }

  function getMyCustodian(string key) constant return (uint) {
    return custodians[msg.sender][key]
  }
}
