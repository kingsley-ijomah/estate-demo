require 'user'

Given(/^that I have a user called "(.*?)" surname "(.*?)" with username "(.*?)" and password "(.*?)"$/) do |firstname, surname, username, password|
  User.create(firstname: firstname, lastname: surname, username: username, password: password)
  @user = User.find_by(firstname: firstname)
end

When(/^I update firstname to "(.*?)"$/) do |firstname|
  @user.firstname = firstname
  @user.save!
end

Then(/^I expect a search for firstname "(.*?)" to return nill$/) do |firstname|
  @search = User.find_by(firstname: firstname)
  expect(@search).to eq(nil)
end

Then(/^If I search for firstname "(.*?)"$/) do |firstname|
	@search = User.find_by(firstname: firstname)
end

Then(/^I should get a user with firstname "(.*?)" surname "(.*?)" with username "(.*?)"$/) do |firstname, lastname, username|
  expect(@search.firstname).to eq('susan')
  expect(@search.lastname).to eq('adams')
  expect(@search.username).to eq('pam')
end