require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'

ActionController::Base.allow_rescue = true

begin
  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.33'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      implicit_wait: 60,
      args: %w( disable-popup-blocking disable-infobars)
  )

  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end


World Warden::Test::Helpers

Before do
  Warden.test_mode!
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(OmniAuthFixtures.facebook_response)
end

After do
  Warden.test_reset!
end

Capybara.javascript_driver = :selenium
