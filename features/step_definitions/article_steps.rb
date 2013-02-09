Given /^I have articles titled (.+)$/ do   |titles|
  titles.split(', ').each  do |title|
    Article.create!(:title => title)
  end
end

When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Given /^I have no articles$/ do
  Article.delete_all
end

When /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I follow "([^"]*)"$/ do |link_name|
  visit path_to(link_name)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end
When /^I press "([^"]*)"$/ do |button|
  click_button button
end
When /^I should have (\d+) article$/ do |count|
  Article.count.should == count.to_i
end