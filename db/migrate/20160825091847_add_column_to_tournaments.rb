class AddColumnToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :deadline, :date
  end
end
