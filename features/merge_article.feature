Feature: Merging Articles
	As a blog administrator
	I want to be able to merge articles with similar content

	Background:
		Give the blog is set up


	Scenario: A non-admin cannot merge two articles
	    Given I am logged into the admin panel as blog publisher
	    When I am on the new article page
	    Then I should not see "Merge Articles"
