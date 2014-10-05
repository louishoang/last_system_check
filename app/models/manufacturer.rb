class Manufacturer < ActiveRecord::Base
  has_many :cars

  validates :name, presence: true, uniqueness: {message: "This manufacturer is already existed."}
  validates :country, presence: true
end
