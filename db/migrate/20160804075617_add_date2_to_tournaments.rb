class AddDate2ToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :date2, :date
  end
end
