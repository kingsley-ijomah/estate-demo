lib = File.expand_path('../../../../lib/estate-demo/models', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'user'

Given(/^that I create the following users:$/) do |table|
  # table is a Cucumber::Ast::Table
  @user = User.new
  table.hashes.each do |user|
  	@user.create(user)
  end
end

Then(/^I should now have (\d+) records saved$/) do |total|
  expect(User.count).to eq(total.to_i)
end

When(/^I search for user with firstname equals "(.*?)"$/) do |firstname|
  @search = @user.search(firstname)
end

Then(/^I expect to get result matching:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do | user |
  	expect(user['lastname']).to eq(@search.lastname)
  end
end