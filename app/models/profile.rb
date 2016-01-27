class Profile < ActiveRecord::Base
  validates :firstname, :lastname, :age, :country, :state, :city, :zipcode, presence: true
  has_many :houses
  accepts_nested_attributes_for :houses
end
