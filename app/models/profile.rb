class Profile < ActiveRecord::Base
  validates :firstname, :lastname, :age, :country, :state, :city, :zipcode, presence: true
end
