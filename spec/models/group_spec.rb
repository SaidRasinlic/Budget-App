require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Said', email: 'said@email.com', password: 'Password', password_confirmation: 'Password')

    @user.save

    @group = Group.new(name: 'Group-1', icon: 'home')

    @group.save

    @entity = Entity.new(name: 'Entity-1', amount: 100)

    @entity.save

    @group.entities << @entity
  end

  it 'should have a name' do
    @group.name
    expect(@group.name).to eq('Group-1')
  end

  it 'should have an icon' do
    @group.icon
    expect(@group.icon).to eq('home')
  end

  it 'should have entities' do
    @group.entities
    expect(@group.entities).to eq([@entity])
  end
end
