class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :happiness_lvl
      t.integer :hunger_lvl
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
