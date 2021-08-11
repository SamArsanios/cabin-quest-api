require 'rails_helper'

RSpec.describe Cabin, type: :model do
  it 'should test that the factory is valid' do
    user = FactoryBot.build :user
    cabin = FactoryBot.build :cabin, user: user # , status: 'available'
    expect(cabin).to be_valid
  end

  it 'should test that user exist' do
    user = FactoryBot.build :user # rubocop:disable Lint/UselessAssignment
    cabin = FactoryBot.build :cabin # , status: 'available'
    expect(cabin).not_to be_valid
    expect(cabin.errors.messages[:user]).to include('must exist')
  end

  it 'should validate the presence of name' do
    user = FactoryBot.build :user
    cabin = FactoryBot.build :cabin, user: user, name: '' # , status: 'available'
    expect(cabin).not_to be_valid
    expect(cabin.errors.messages[:name]).to include("can't be blank")
  end
end
