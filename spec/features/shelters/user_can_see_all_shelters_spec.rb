require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can see all shelters and info" do
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

    expect(page).to have_content(shelter1.name)
    expect(page).to have_content(shelter2.name)
  end
end
