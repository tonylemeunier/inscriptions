class RemoveDateFromTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :date, :string
  end
end
