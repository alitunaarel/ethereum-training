pragma solidity ^0.4.11;

import "./Ownable.sol";

// Create a smart contract
contract PublicElection is Ownable {

  uint startDate;
  uint endDate;

  // that symbolizes a vote with a start and end date.
  function PublicElection(uint _startdate, uint _endDate){
    startDate = _startdate;
    endDate = _endDate;
  }

  struct Candidate {
    string name;
    uint votes;
  }

  mapping(address => Candidate) candidates;
  address[] candidateIndex;

  // where only the owner of the contract can add candidates
  function addCandidate(address _candidateAddress, string _candidateName) onlyOwner {
    candidates[_candidateAddress] = Candidate({name: _candidateName, votes: 0});
    candidateIndex.push(_candidateAddress);
  }

  function getCandidateIndexLength() constant returns (uint) {
    return candidateIndex.length;
  }

  function getCandidateAtIndex(uint index) constant returns (address candidate, string name, uint votes) {
    candidate = candidateIndex[index];
    name = candidates[candidate].name;
    votes = candidates[candidate].votes;
  }

  modifier payedExact(uint amount){
    require(msg.value == amount);
    _;
  }

  mapping(address => bool) registeredToVote;

  // where any user can register to vote as long as they pay 3000 finney
  function registerToVote() payable payedExact(3000 finney) {
    registeredToVote[msg.sender] = true;
  }

  modifier isRegisteredToVote(){
    require(registeredToVote[msg.sender]);
    _;
  }

  modifier onlyAfter(uint theTime) {
      require(now <= theTime);
      _;
  }

  // where the registered users can vote on a candidate
  function castVote(address candidate) isRegisteredToVote onlyAfter(startDate) {
      candidates[candidate].votes += 1;
  }

  // when triggered by the owner the winner gets all the funds, but only when the end date is passed
  function conclude() onlyOwner onlyAfter(endDate) {
    uint winningVoteCount = 0;
    address winningCandidate;

    for (uint8 candidate = 0; candidate < candidateIndex.length; candidate++){
      Candidate c = candidates[candidateIndex[candidate]];
      if (c.votes > winningVoteCount) {
          winningVoteCount = c.votes;
          winningCandidate = candidateIndex[candidate];
      }
    }

    winningCandidate.transfer(this.balance);
  }
}
