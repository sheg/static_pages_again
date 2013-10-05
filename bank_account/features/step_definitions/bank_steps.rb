Given(/^I have deposited \$(\d+) in my account$/) do |amount|
  my_account.deposit amount.to_i
end

When(/^I withdraw \$(\d+)$/) do |amount|
  teller.withdraw_from(my_account, amount.to_i)
end

Then(/^\$(\d+) will be dispensed$/) do |amount|
  cash_slot.contents.should eq amount.to_i
end

Then(/^the balance of my account should be \$(\d+)$/) do |amount|
  my_account.balance.should eq amount.to_i
end