lib = File.expand_path('../../../../lib/estate-demo/models', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'user'

Given(/^that I create the following users:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^I should now have (\d+) records saved$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
