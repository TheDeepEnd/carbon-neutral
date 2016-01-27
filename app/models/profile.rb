class Profile < ActiveRecord::Base
  validates :firstname, :lastname, :age, :country, :state, :city, :zipcode, presence: true
  has_one :house
  accepts_nested_attributes_for :house
end
