require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @user = User.new(name: 'Said', email: 'said@email.com', password: 'Password', password_confirmation: 'Password')

    @user.save

    @group = Group.new(name: 'Group-1', icon: 'home')

    @group.save

    @entity = Entity.new(name: 'Entity-1', amount: 100)

    @entity.save

    @group.entities << @entity

    @user.groups << @group
  end

  it 'should have a name' do
    @entity.name
    expect(@entity.name).to eq('Entity-1')
  end

  it 'should have an amount' do
    @entity.amount
    expect(@entity.amount).to eq(100)
  end

  it 'should belong to a group' do
    @entity.group
    expect(@entity.group).to eq(@group)
  end
end
