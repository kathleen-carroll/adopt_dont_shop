require 'rails_helper'

RSpec.describe "shelter id page", type: :feature do
  it "can see one shelters and info" do
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

    visit "/shelters/#{shelter1.id}"

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content("#{shelter1.address} #{shelter1.city}, #{shelter1.state} #{shelter1.zip}")

    visit "/shelters/#{shelter2.id}"

    expect(page).to have_content(shelter2.name)
    expect(page).to have_content("#{shelter2.address} #{shelter2.city}, #{shelter2.state} #{shelter2.zip}")
  end
end
