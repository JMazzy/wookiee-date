class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # Personal Attributes
      t.string :name
      t.integer :age
      t.string :gender

      # Seeking
      t.string :seeking_gender
      t.string :species
      t.string :species_class
      t.string :skin
      t.string :hair
      t.string :eyes
      t.string :vehicle
      t.string :language
      t.integer :height
      t.integer :mass
      t.integer :lifespan
      t.integer :seeking_age

      t.timestamps null: false
    end
  end
end
