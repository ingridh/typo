Feature: Merging Articles
  As a blog administrator
  I want to be able to merge articles with similar content
  So that people can conveniently read similar posts 

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    Given I am logged into the contributor panel
    When I go to article: "yolo"
    Then I should not see "Merge Articles"

  Scenario: A admin should be able to see merge article option
    Given I am logged into the admin panel
    When I go to article: "yolo"
    Then I should see "Merge Articles"
  
  Scenario: I merge two articles and the merged article should contain text of both
    Given I am logged into the admin panel 
    When I go to article: "yolo" 
    And I merge the current article with "Hello World!"
    Then I go to view article: "yolo"
    Then I should see "swag \n yolo"

  Scenario: I merge two articles and the merged article's author should be the same as the foreign author's 
    Given I am logged into the admin panel
    When I go to article: "yolo"
    And I merge the current article with "Hello World!"
    Then the author of "yolo" should be "yolo"

  Scenario: The comments of both articles should be merged
    Given I am logged into the admin panel
    When I go to article: "yolo"
    And I merge the current article with "Hello World!"
    When I go to view article: "yolo"
    Then I should see "swag_content"
    Then I should see "yolo_content"