Feature: Merging Articles
	As a blog administrator
	I want to be able to merge articles with similar content
	So that people can conveniently read similar posts 

	Background:
		Given the blog is set up
		

	Scenario: A non-admin cannot merge two articles
	    Given I am not an admin
	    When I am on the new article page
	    Then I should not see "Merge Articles"
