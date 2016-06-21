class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :licence
      t.integer :credit

      t.timestamps null: false
    end
  end
end
