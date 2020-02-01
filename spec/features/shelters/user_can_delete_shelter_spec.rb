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
    expect(page).to have_content(shelter2.name)
    expect(page).to have_content(shelter1.name)

    visit "/shelters/#{shelter1.id}"
    click_on 'delete'

    visit '/shelters'
    expect(page).to have_content(shelter2.name)
    expect(page).to_not have_content(shelter1.name)
  end
end
