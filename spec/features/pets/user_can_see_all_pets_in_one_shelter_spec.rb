require 'rails_helper'

RSpec.describe "shelter show page and pet page", type: :feature do
  it "can see all pets list from shelter show page" do
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

    pet1 = Pet.create(image_src: "https://free-classifieds-usa.com/oc-content/uploads/893/76682.jpg",
                          name: "Peanut",
                          approximate_age: "3",
                          sex: "M",
                          shelter_id: shelter2.id)

    pet2 = Pet.create(image_src: "https://thedogsjournal.com/wp-content/uploads/bfi_thumb/bernedoodle-prize-39zr02ajf5v660ii64zbbe.jpg",
                          name: "Biscuit",
                          approximate_age: "8",
                          sex: "F",
                          shelter_id: shelter1.id)

    pet3 = Pet.create(image_src: "https://cdn.fotofits.com/petzlover/gallery/img/l/samoyed-657170.jpg",
                          name: "Frank",
                          approximate_age: "1",
                          sex: "M",
                          shelter_id: shelter1.id)


    visit '/pets'

    expect(page).to have_content(pet1.name)
    expect(page).to have_content(pet2.name)
  end
end
