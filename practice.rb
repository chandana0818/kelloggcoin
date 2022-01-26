# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".
#wallet = {user: balance}
users = []
wallet = {}
for i in blockchain
  if i[:from_user] != nil && !(users.include? i[:from_user])
    users.push(i[:from_user])
  end
  if (i[:to_user] != nil) && !(users.include? i[:to_user])
    users.push(i[:to_user])
  end
end

for x in users
  wallet[x] = 0
end
for x in users
  for y in blockchain
    if y[:from_user] == x
      wallet[x] = wallet[x] - y[:amount]
    elsif y[:to_user] == x
      wallet[x] = wallet[x] + y[:amount]
    end
  end
end
# puts users
# puts wallet

wallet.each do |key, value|
  puts key + "'s KelloggCoin balance is " + value.to_s()
end


# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
