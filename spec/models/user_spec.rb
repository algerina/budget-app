require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Test1', email: 'test1@gmail.com', password: '123456')
  end

  it 'name should be valid' do
    expect(@user).to be_valid
  end

  it 'name should be present' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
end