Given(/^I visit the site$/) do
  visit root_path
end

Given("the following news articles exist") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end


Given('I click on {string}') do |link|
  click_link_or_button link
end

Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

And(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as user, scope: :user
end