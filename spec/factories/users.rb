FactoryBot.define do
  factory :user do
    username { 'MyString' }
    email { "#{firstname}.#{lastname}@example.com".downcase }
    password { 'MyString' }
    firstname { 'MyString' }
    lastname { 'MyString' }
    isAdmin { false }
    image { 'MyString' }
  end
end
