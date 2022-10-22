require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Said', email: 'said@email.com', password: 'Password', password_confirmation: 'Password')

    @user.save

    @group = Group.new(name: 'Group-1', icon: 'home')

    @group.save

    @entity = Entity.new(name: 'Entity-1', amount: 100)

    @entity.save
  end

  it 'should be valid' do
    expect(@user).to be_valid
  end

  it 'should have a name' do
    @user.name
    expect(@user.name).to eq('Said')
  end

  it 'should have an email' do
    @user.email
    expect(@user.email).to eq('said@email.com')
  end

  it 'should have a password' do
    @user.password
    expect(@user.password).to eq('Password')
  end

  it 'should have a password_confirmation' do
    @user.password_confirmation
    expect(@user.password_confirmation).to eq('Password')
  end
end
