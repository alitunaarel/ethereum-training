MetaCoin.deployed().then(function (instance) {
  meta = instance
  return meta.getBalance.call(account, { from: account })
})

MetaCoin.deployed().then(function (instance) {
  meta = instance
  return meta.sendCoin(receiver, amount, { from: account })
})
