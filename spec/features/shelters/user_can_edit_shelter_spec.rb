require 'rails_helper'

RSpec.describe "update shelter form page", type: :feature do
  it "can go to update shelter form and submit" do
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
    click_on 'Edit'
    expect(current_path).to eq("/shelters/#{shelter1.id}/edit")
    expect(page).to have_css('textarea', :count => 5)
    click_button
    expect(current_path).to eq("/shelters/#{shelter1.id}")
  end
end
