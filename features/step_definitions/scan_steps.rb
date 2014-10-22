Given(/^a known item$/) do
  
 pending
end

When(/^the cashier scans the item$/) do
   pending
end

Then(/^the item should be added to the total$/) do
  pending
end

Given(/^an unknown item$/) do
 pending
end

Then(/^the cashier should be notified that the item is not recognised$/) do
  pending
end

module Helper
  def last_item=(item)
    @last_item = item
  end
  def last_item
    @last_item
  end
end

World(Helper)
