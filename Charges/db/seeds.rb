# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Four Customers
Customer.create!(
    first_name: 'Johny',
    last_name: 'Flow'
  )

Customer.create!(
    first_name: 'Raj',
    last_name: 'Jamnis'
  )

Customer.create!(
    first_name: 'Andrew',
    last_name: 'Chung'
  )

Customer.create!(
    first_name: 'Mike',
    last_name: 'Smith'
  )

# 10 successful transactions
5.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 1,
    disputed: false
    )
end

3.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 2,
    disputed: false
    )
end

CreditCardCharge.create!(
  created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 3,
    disputed: false
  )

CreditCardCharge.create!(
  created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 4,
    disputed: false
  )

# 5 failed transactions
3.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: false,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 3,
    disputed: false
    )
end

2.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: false,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 4,
    disputed: false
    )
end

# 5 disputed transactions
3.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 1,
    disputed: true
    )
end

2.times do
  CreditCardCharge.create!(
    created: Time.now,
    paid: true,
    amount: 10.00,
    currency: 'usd',
    refunded: false,
    customer_id: 2,
    disputed: true
    )
end
