require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should check that the user is valid' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'should validate firstname' do
    user = FactoryBot.build :user, firstname: ''

    expect(user).not_to be_valid
    expect(user.errors.messages[:firstname]).to include("can't be blank")
  end

  it 'should validate lastname' do
    user = FactoryBot.build :user, lastname: ''

    expect(user).not_to be_valid
    expect(user.errors.messages[:lastname]).to include("can't be blank")
  end

  it 'should validate email' do
    user = FactoryBot.build :user, email: ''

    expect(user).not_to be_valid
    expect(user.errors.messages[:email]).to include("can't be blank")
  end

  it 'should validate password' do
    user = FactoryBot.build :user, password: ''

    expect(user).not_to be_valid
    expect(user.errors.messages[:password]).to include("can't be blank")
  end
end
