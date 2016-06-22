class RemoveColumnsFromTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :dh, :boolean
    remove_column :tournaments, :dd, :boolean
    remove_column :tournaments, :dm, :boolean
    remove_column :tournaments, :n1, :boolean
    remove_column :tournaments, :n2, :boolean
    remove_column :tournaments, :n3, :boolean
    remove_column :tournaments, :r4, :boolean
    remove_column :tournaments, :r5, :boolean
    remove_column :tournaments, :r6, :boolean
    remove_column :tournaments, :d7, :boolean
    remove_column :tournaments, :d8, :boolean
    remove_column :tournaments, :d9, :boolean
    remove_column :tournaments, :p1, :boolean
    remove_column :tournaments, :p2, :boolean
    remove_column :tournaments, :p3, :boolean
  end
end
