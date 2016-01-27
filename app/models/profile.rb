class Profile < ActiveRecord::Base
  validates :firstname, :lastname, :age, :country, :state, :city, :zipcode, presence: true
  has_one :house, dependent: :destroy
  before_create :build_house
  accepts_nested_attributes_for :house
end
