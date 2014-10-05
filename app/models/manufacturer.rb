class Manufacturer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {message: "This manufacturer is already existed."}
  validates :country, presence: true
end
