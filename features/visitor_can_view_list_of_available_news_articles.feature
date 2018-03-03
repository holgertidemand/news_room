@javascript
Feature: Visitor can view list of available news articles
  As a visitor
  In order to stay in touch with current events
  I would like to see a list of news articles when I visit the site

  Background:
    Given the following news articles exist
      | title                         | content                                        |
      | Trump elected President of US | The impossible did actually happen...          |
      | Doomsday nears                | Trump elected president. End of World is near? |

  Scenario: User visit the site
    Given I visit the site
    Then I should see "Trump elected President of US"
    And I should see "Doomsday nears"