class AddColumnsFromTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :serie, :string
    add_column :tournaments, :tableau, :string
  end
end
