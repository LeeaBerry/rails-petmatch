class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.string :pet_type
      t.string :pet_breed
      t.string :pet_description
      t.string :pet_region
      t.string :pet_image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
