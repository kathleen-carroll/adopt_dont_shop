# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
Shelter.destroy_all


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
                      status: "pending",
                      description: "",
                      shelter_id: shelter2.id)

pet2 = Pet.create(image_src: "https://thedogsjournal.com/wp-content/uploads/bfi_thumb/bernedoodle-prize-39zr02ajf5v660ii64zbbe.jpg",
                      name: "Biscuit",
                      approximate_age: "8",
                      sex: "F",
                      status: "adoptable",
                      description: "",
                      shelter_id: shelter1.id)

pet3 = Pet.create(image_src: "https://cdn.fotofits.com/petzlover/gallery/img/l/samoyed-657170.jpg",
                      name: "Frank",
                      approximate_age: "1",
                      sex: "M",
                      status: "adopted",
                      description: "",
                      shelter_id: shelter1.id)
