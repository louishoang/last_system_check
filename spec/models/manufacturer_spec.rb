require 'rails_helper'

describe Manufacturer do
  describe 'validations' do
    it { should validate_presence_of(:name) }

    it "validates uniqueness of name" do
      FactoryGirl.build(:manufacturer).save!(validate: false)
      should validate_uniqueness_of(:name).
      with_message("This manufacturer is already existed.")
    end
  end
end
