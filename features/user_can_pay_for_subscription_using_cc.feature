Feature: User can pay for subscription using credit card
  As a registered user
  In order to access all content
  I would like to be able to purchase a subscription


  Background:
    Given the following users exist
      | email             | subscriber |
      | random@random.com | false      |

    And I am logged in as "random@random.com"

    # 1. Visit the subscription page
    # 2. Initiate Stripe payment
    # 3. Provide cc credentials
    # 4. Stripe process my payment
    # 5. Have my subscription status updated to "true" on successful payment

    @javascript
    Scenario: User signs up for a subscription with valid credit card
      Given I am on the create subscription page
      And I click on the "Pay with Card" button
      And I fill in stripe field "Card number" with "4242 4242 4242 4242"
      And I fill in stripe field "CVC" with "123"
      And I fill in stripe field "Expiry" with "12/2021"
      And submit the stripe form
      Then I should see "Welcome as a subscriber!"
      And "random@random.com" should be a subscriber
