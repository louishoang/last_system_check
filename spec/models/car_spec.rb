require 'rails_helper'

describe Car do
  describe 'validations' do
    it { should validate_presence_of(:color) }
    it { should validate_numericality_of(:year) }
    it { should validate_numericality_of(:mileage) }
    it { should validate_presence_of(:manufacturer) }
  end

  describe 'associations' do
    it { should belong_to(:manufacturer) }
  end
end
