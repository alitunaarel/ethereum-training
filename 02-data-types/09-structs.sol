pragma solidity ^0.4.11;

contract Example {

  struct Funder {
      address addr;
      uint amount;
  }

  struct Campaign {
      address beneficiary;
      uint fundingGoal;
      uint numFunders;
      uint amount;
      mapping (uint => Funder) funders;
  }

  mapping (uint => Campaign) campaigns;

  function newCampaign(address beneficiary, uint goal) returns (uint campaignID) {
    campaignID = numCampaigns++; // campaignID is return variable
    campaigns[campaignID] = Campaign(beneficiary, goal, 0, 0);
  }

  function contribute(uint campaignID) payable {
    Campaign c = campaigns[campaignID];
    c.funders[c.numFunders++] = Funder({addr: msg.sender, amount: msg.value});
    c.amount += msg.value;
  }
}
