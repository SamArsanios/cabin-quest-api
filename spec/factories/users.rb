FactoryBot.define do
  factory :user do
    username { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    firstname { "MyString" }
    lastname { "MyString" }
    isAdmin { false }
    image { "MyText" }
  end
end
