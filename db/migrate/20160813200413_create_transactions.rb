class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :reason
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
