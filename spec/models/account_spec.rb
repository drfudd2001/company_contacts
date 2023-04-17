require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username that is a minimum of 5 characters and to be unique' do
    user1 = Account.create password: 'password123', email: 'user1@not.com'
    expect(user1.errors[:username]).to_not be_empty
    user2 = Account.create username: 'user', password: 'password123', email: 'user1@not.com'
    expect(user2.errors[:username]).to_not be_empty
    user3 = Account.create username: 'user1', password: 'password123', email: 'user1@not.com'
    user4 = Account.create username: 'user1', password: 'password123', email: 'user1@not.com'
    expect(user4.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password that is a minimmum of 6 characters and to be unique' do
    user1 = Account.create username: 'password123', email: 'user1@not.com'
    expect(user1.errors[:password]).to_not be_empty
    user2 = Account.create username: 'password123', password: '12345', email: 'user1@not.com'
    expect(user2.errors[:password]).to_not be_empty
    user3 = Account.create username: 'password123', password: '12345', email: 'user1@not.com'
    user4 = Account.create username: 'user4', password: '12345', email: 'user1@not.com'
    expect(user4.errors[:password]).to_not be_empty
  end
  it 'is not valid without an email' do
    user1 = Account.create username: 'password123', password: 'user1@not.com'
    expect(user1.errors[:email]).to_not be_empty
  end
end
