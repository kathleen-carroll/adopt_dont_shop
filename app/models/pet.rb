class Pet < ApplicationRecord
  belongs_to :shelter
  validates_presence_of :name, :approximate_age, :image_src
  # def find_shelter
  #   # self.shelter.name
  #   Shelter.find(shelter_id).name
  #   # self.id
  # end
end
