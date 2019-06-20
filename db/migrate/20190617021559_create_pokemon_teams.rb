class CreatePokemonTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_teams do |t|
      t.string :name
      t.integer :team_id
      t.integer :pokemon_id
      t.timestamps
    end
  end
end
