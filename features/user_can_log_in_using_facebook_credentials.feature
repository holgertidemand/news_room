Feature: User can log in using Facebook credentials
  As a user of the system/application
  In order to simplify the sign in/sign up process
  I would like to be able to authenticate using my Facebook account

  @javascript
  Scenario: Visitor clicks on 'Login with Facebook' and creates an account
    Given I visit the site
    And I click on "Login with Facebook"
    Then I should be redirected to the landing page
    And I should see "Successfully authenticated from Facebook account"
    And the my account should state that I signed up with Facebook

  Scenario: Visitor fails to sign up with Facebook OmniAuth
    Given I visit the site
    And I have incorrect credetialls
    And I click on "Login with Facebook"
    Then I should see "That did not work!"
