require 'rails_helper'

feature "Record car manufacturer" do
  scenario "add new manufacturer successfully" do
    manufacturer = FactoryGirl.build(:manufacturer)

    visit root_path
    click_on "Add new manufacturer"
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add manufacturer"

    expect(page).to have_content "Your record has been created successfully!"
  end

  scenario "add new manufacturer failed" do
    manufacturer = FactoryGirl.build(:manufacturer)

    visit root_path
    click_on "Add new manufacturer"
    click_on "Add manufacturer"

    expect(page).to have_content "Your record could not be completed"
  end
end
