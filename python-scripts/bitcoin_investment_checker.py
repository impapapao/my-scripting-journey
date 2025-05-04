bitcoin_amount = 1
investment_in_bitcoin = 1.2
bitcoinValue_to_usd = 40000

# 1) write a function to calculate bitcoin to usd
def bitcoinToUSD(bitcoin_amount, bitcoin_to_usd):
  usd_value = bitcoin_amount * bitcoin_to_usd
  return usd_value
# 2) use function to calculate if the investment is below $30,000

flag = bitcoinToUSD(investment_in_bitcoin, bitcoinValue_to_usd)
if flag <= 30000:
  print("Investment below $30,000! SELL!")
else:
  print("Investment above $30,000")