FactoryGirl.define do
  factory :user do |f|
    f.name "Phredd"
    f.password "secret12"
    f.password_confirmation { |u| u.password }
    f.email { "#{f.name}@example.com" }

  end

end