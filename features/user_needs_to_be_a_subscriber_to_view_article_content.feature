Feature: User needs to be a subscriber to view article content
  As a News Agency
  In order to make money
  I would like to only have users that are subscribers to be able to read
  articles


  Background:
    Given the following news articles exist
      | title                         | content                                        |
      | Trump elected President of US | The impossible did actually happen...          |
      | Doomsday nears                | Trump elected president. End of World is near? |

    Given the following users exist
      | email                 | subscriber |
      | random@random.com     | false      |
      | subscriber@random.com | true       |


  Scenario: Non registered visitor clicks an article link and get redirected to Purchase Subscription page
    And I visit the site
    When I click on "Trump elected President of US"
    Then I should be redirected to a register account page
    And I should see "You need to be logged in to access this content"

  Scenario: Non subscribing user clicks an article link and get redirected to Purchase Subscription page
    Given I am logged in as "random@random.com"
    And I visit the site
    When I click on "Trump elected President of US"
    Then I should be redirected to a purchase subscription page
    And I should see "You need to be a subscriber to access this content"

  Scenario: A subscriber clicks on an article link and is allowed to view content
    Given I am logged in as "subscriber@random.com"
    And I visit the site
    When I click on "Trump elected President of US"
    Then I should be redirected the show page for "Trump elected President of US"