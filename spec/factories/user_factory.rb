FactoryBot.define do
  factory :user do
    sequence(:email)       { |n| "person#{n}@example.com" }
    password               {"ffffff" }
    password_confirmation  {"ffffff" }
  end
end
