class CreateSwCharacters < ActiveRecord::Migration
  def change
    create_table :sw_characters do |t|
      t.string :name
      t.string :gender
      t.string :species
      t.string :species_class
      t.string :skin
      t.string :hair
      t.string :eyes
      t.string :vehicle
      t.string :starship
      t.string :language
      t.integer :height
      t.integer :mass
      t.integer :lifespan
      t.integer :age

      t.timestamps null: false
    end
  end
end
