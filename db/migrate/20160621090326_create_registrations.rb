class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :player, index: true, foreign_key: true
      t.references :tournament, index: true, foreign_key: true
      t.string :tableau1
      t.string :serie1
      t.string :tableau2
      t.string :serie2
      t.string :tableau3
      t.string :serie3
      t.integer :price

      t.timestamps null: false
    end
  end
end
