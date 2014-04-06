class AddSeasonToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :season, :integer, :after => :drama_id
  end
end
