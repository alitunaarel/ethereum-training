pragma solidity ^0.4.11;

contract Example {

  enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
  ActionChoices choice;
  ActionChoices constant defaultChoice = ActionChoices.GoStraight;

  function getChoice() returns (ActionChoices) {
      return choice;
  }

  function getDefaultChoice() returns (uint) {
      return uint(defaultChoice);
  }

  // 1. in your DAPP you will just get a 0-based index

}
