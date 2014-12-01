When(/^I try to create a bid$/) do
  @bid = make_bid(@student)
end

Then(/^a new bid should be created/) do
  assert(!@bid.nil?)
end

Then(/^a new bid should not be created/) do
  assert(@bid.nil?)
end
