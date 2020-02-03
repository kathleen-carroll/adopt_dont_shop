require 'rails_helper'

RSpec.describe "shelter pet index to new pet form page", type: :feature do
  it "can go to new pet form and submit" do
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

    visit "/shelters/#{shelter1.id}/pets"

    click_on 'Create New Pet'
    expect(current_path).to eq("/shelters/#{shelter1.id}/pets/new")

    fill_in :name, with: "Boots"
    fill_in :image_src, with: "https://d17fnq9dkz9hgj.cloudfront.net/breed-uploads/2018/08/old-english-sheepdog-detail.jpg?bust=1535566218&width=630"
    fill_in :approximate_age, with: "1"
    fill_in :status, with: "Adoptable"
    fill_in :sex, with: "M"
    fill_in :description, with: "Boots is friendly and energetic"

    expect(page).to have_css('input', :count => 7)

    click_button

    new_pet = Pet.last

    expect(new_pet.name).to eq("Boots")
  end
end
