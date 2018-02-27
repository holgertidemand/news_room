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


    Scenario: Visitor clicks an article link and get redirected to Purchase Subscription page
      Given I visit the site
      And I click on "Trump elected President of US"
      Then I should be redirected to a purchase subscription page