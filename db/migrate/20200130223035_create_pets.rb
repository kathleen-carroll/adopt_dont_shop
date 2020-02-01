class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :image_src
      t.string :name
      t.string :approximate_age
      t.string :sex

      t.timestamps
    end
  end
end
