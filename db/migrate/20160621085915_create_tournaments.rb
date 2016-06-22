class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :city
      t.string :date
      t.boolean :n1
      t.boolean :n2
      t.boolean :n3
      t.boolean :r4
      t.boolean :r5
      t.boolean :r6
      t.boolean :d7
      t.boolean :d8
      t.boolean :d9
      t.boolean :p1
      t.boolean :p2
      t.boolean :p3
      t.boolean :dh
      t.boolean :dd
      t.boolean :dm
      t.integer :price1
      t.integer :price2
      t.integer :price3
      t.boolean :club
      t.string :convocations

      t.timestamps null: false
    end
  end
end
