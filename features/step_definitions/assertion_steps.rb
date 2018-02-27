Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then('I should be redirected to a purchase subscription page') do
  expect(page.current_path).to eq new_subscription_path
end