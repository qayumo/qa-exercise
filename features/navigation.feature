Feature: Navigation
  As a QA
  I want to navigate the different pages on the Valtech site
  so that I can assert the pages are displayed correctly

  Background:
    Given I am on the Homepage

  Scenario: Verify the recent blogs section is displayed
    When I scroll to the "Recent Blogs" section
    Then the "Recent Blogs" section is displayed

  Scenario: Verify blog article
      And I scroll to the "Recent Blogs" section
    When I select the first blog article
    Then the blog article page title is displayed

  Scenario Outline: Verify page titles
    When I navigate to the "<page>" page
    Then the "<page>" page is displayed

  Examples:
    | page     |
    | About    |
    | Services |
    | Work     |

  Scenario: Output total number of Valtech offices
    When I navigate to the Contact Us page
    Then I am informed how many Valtech offices there are in total

