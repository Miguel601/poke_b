class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :password_digest
      t.string :trainer_name
      t.timestamps
    end
  end
end
