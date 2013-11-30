Feature: Adding users

Scenario: Successfully creating a new user
	Given that I create the following users:
		| firstname | lastname | username           | password |
		| kingsley  | ijomah   | kingsley@gmail.com | king123  |
		| danielle  | ijomah   | danielle@gmail.com | dan123   |
	Then I should now have 2 records saved