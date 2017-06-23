var PublicElection = artifacts.require('./PublicElection.sol')

contract('PublicElection', function (accounts) {
  it('test1', function () {
    return PublicElection.deployed().then(function (instance) {
      return instance.addCandidate('0xB21087870E49947076f72d48921f98be51FbA702', 'Trump').then(function () {
        instance.getCandidateIndexLength.call().then(function (length) {
          for (var i = 0; i < length.toNumber(); i++) {
            instance.getCandidateAtIndex.call(i).then(function (candi) {
              console.log(candi)
            })
          }
          console.log(length.toNumber())
        })
      })
    })
  })
})
