class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :drama_id
      t.integer :number
      t.string :title
      t.string :description
      t.date :play_date
      t.timestamps
    end
  end
end
