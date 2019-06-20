class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.string :sprite
      t.integer :weight
      t.integer :height
      t.integer :likes, :default => 0

      t.timestamps
    end
  end
end
