Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then('I should be redirected to a purchase subscription page') do
  expect(page.current_path).to eq new_subscription_path
end

Then(/^I should be redirected the show page for "([^"]*)"$/) do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end

Then(/^I should be redirected to a register account page$/) do
  expect(page.current_path).to eq new_user_registration_path

end

And(/^"([^"]*)" should be a subscriber$/) do |email|
  user = User.find_by(email: email)
  expect(user.subscriber?).to eq true
end

Then(/^I should be redirected to the landing page$/) do
  sleep 3
  expect(page.current_path).to eq root_path
end

And(/^the my account should state that I signed up with Facebook$/) do
  user = User.last
  expect(user.provider).to eq 'facebook'
end