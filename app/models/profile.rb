class Profile < ActiveRecord::Base
  validates :firstname, :lastname, :age, :country, :state, :city, :zipcode, presence: true
  has_one :house, dependent: :destroy
  has_one :expense, dependent: :destroy
  before_create :build_house
  before_create :build_expense
  accepts_nested_attributes_for :house
  accepts_nested_attributes_for :expense
end
