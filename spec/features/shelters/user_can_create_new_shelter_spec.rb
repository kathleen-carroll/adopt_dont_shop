require 'rails_helper'

RSpec.describe "index to new shelter form page", type: :feature do
  it "can go to new shelter form and submit" do
    shelter1 = Shelter.create(name: "Pups 4 U",
                           address: "208 Puppy Place",
                           city: "Denver",
                           state: "CO",
                           zip: 80211)

    shelter2 = Shelter.create(name: "Furry Friends Shelter",
                            address: "7899 St Charles Ave",
                            city: "New Orleans",
                            state: "LA",
                            zip: 70118)

    visit '/shelters'

    click_on 'Create New Shelter'
    expect(current_path).to eq('/shelters/new')
    expect(page).to have_content("Shelter name:")
    expect(page).to have_content("Address:")
    expect(page).to have_content("State:")
    expect(page).to have_content("City:")
    expect(page).to have_content("Zip:")

    expect(page).to have_css('input', :count => 6)
  end
end
