Given /^the following user records$/ do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, name: hash["name"], password: hash["password"])
  end

  #User.find_by_name("bob").role?('Admin').should be_true

end
Given /^the following user records and role assignments$/ do |table|
  table.hashes.each do |hash|

    role = FactoryGirl.create(:role, rolename: hash["rolename"])
    user = FactoryGirl.create(:user, name: hash["name"], password: hash["password"])

   FactoryGirl.create(:role_assignment, user: user, role: role)


  end
  User.find_by_name("bob").role?("Admin").should be_true
end
Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |name, password|
  visit '/login'
  fill_in 'user_email', :with =>  "#{name}@example.com"
  fill_in 'user_password', :with => password
  click_button 'Sign in'

end
When /^I visit profile for "([^"]*)"$/ do |arg|
  pending
end