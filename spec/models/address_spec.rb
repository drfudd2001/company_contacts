require 'rails_helper'

RSpec.describe Address, type: :model do
  # it 'is not valid without a street number,street name, city, state, zipcode and user id' do
  #   address1 = Address.create street_name: 'web', city: 'spider', state: 'CA', zip: 12345, username_id: 1
  #   expect(address1.errors[:street_number]).to_not be_empty
  #   address2 = Address.create street_number: 1, city: 'spider', state: 'CA', zip: 12345, username_id: 1
  #   expect(address2.errors[:street_name]).to_not be_empty
  #   address2 = Address.create street_number: 1, street_name: 'spider', state: 'CA', zip: 12345, username_id: 1
  #   expect(address2.errors[:city]).to_not be_empty
  #   address2 = Address.create street_number: 1, street_name: 'spider', city: 'arachnid', zip: 12345, username_id: 1
  #   expect(address2.errors[:state]).to_not be_empty
  #   address2 = Address.create street_number: 1, street_name: 'spider', city: 'arachnid', state: 'CA', username_id: 1
  #   expect(address2.errors[:zip]).to_not be_empty    
  #   address2 = Address.create street_number: 2, street_name: 'spider', city: 'arachnid', state: 'CA', zip: 12345
  #   expect(address2.errors[:username_id]).to_not be_empty
  # end
  it 'contains all the required fields' do
    address3 = Address.create
    expect(address3).to have_attributes(street_number: 2, street_name: 'spider', city: 'arachnid', state: 'CA', zip: 12345, username_id: 1)
  end
end
