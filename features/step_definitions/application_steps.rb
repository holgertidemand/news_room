Given(/^I visit the site$/) do
  visit root_path
end

Given("the following news articles exist") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end
