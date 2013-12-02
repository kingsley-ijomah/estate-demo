Feature: Editing Users

Scenario: Editing an existing user record
	Given that I have a user called "jennifer" surname "adams" with username "pam" and password "cadet"
	When I update firstname to "susan"
	Then I expect a search for firstname "jennifer" to return nill
	But If I search for firstname "susan"
	Then I should get a user with firstname "susan" surname "adams" with username "pam"