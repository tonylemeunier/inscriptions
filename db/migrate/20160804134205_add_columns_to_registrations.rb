class AddColumnsToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :com1, :string
    add_column :registrations, :com2, :string
    add_column :registrations, :com3, :string
  end
end
