Given /^the following user records$/ do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, {:name => :name, :password => :password})

  end
end
Given /^the following user records and role assignments$/ do |table|
  table.hashes.each do |hash|

    role = FactoryGirl.build(:role,{:rolename => :rolename})
    user = FactoryGirl.build(:user,{:name => :name, :password => :password})

   FactoryGirl.create(:role_assignment)



  end

end
Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |arg1, arg2|
  pending
end
When /^I visit profile for "([^"]*)"$/ do |arg|
  pending
end