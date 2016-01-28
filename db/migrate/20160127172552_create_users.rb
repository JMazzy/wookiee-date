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
      t.string :starship
      t.string :language
      t.string :height
      t.string :mass
      t.string :lifespan
      t.string :seeking_age
      t.string :match

      t.timestamps null: false
    end
  end
end
