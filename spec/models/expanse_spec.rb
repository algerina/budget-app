require 'rails_helper'

RSpec.describe Deal, type: :model do
  before :each do
    @user = User.new(name: 'Test1', email: 'test1@gmail.com', password: '123456')
    @expanse = Expanse.new(name: 'Transaction 1', amount: 1)
  end

  it 'name should be present' do
    @expanse.name = nil
    expect(@expanse).to_not be_valid
  end

  it 'amount should be present' do
    @expanse.amount = nil
    expect(@expanse).to_not be_valid
  end
end