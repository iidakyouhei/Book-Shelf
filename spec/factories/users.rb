FactoryBot.define do

  factory :user do
    name              {Faker::Name.name}
    email                 {Faker::Internet.email}
    password              {"pas123"}
    password_confirmation {"pas123"}
  end

end