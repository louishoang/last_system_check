require 'rails_helper'

feature "Record new car" do
  scenario "New car is added sucessfully" do
    manufacturer = FactoryGirl.create(:manufacturer)
    car = FactoryGirl.build(:car)

    visit new_manufacturer_car_path(manufacturer)
    select manufacturer.name, from: "Manufacturer"
    fill_in "Color", with: car.color
    fill_in "Year", with: car.year
    fill_in "Mileage", with: car.mileage
    click_on "Add car"

    expect(page).to have_content "Your record has been created successfully"
  end

  scenario "New car is added failed" do
    manufacturer = FactoryGirl.create(:manufacturer)

    visit new_manufacturer_car_path(manufacturer)
    click_on "Add car"
    expect(page).to have_content "Your record could not be completed"
  end
end
