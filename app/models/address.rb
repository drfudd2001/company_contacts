class Address < ApplicationRecord
    # validates :street_number, :street_name, :city, :state, :zip, :username_id, presence: true
    belongs_to :account
end
