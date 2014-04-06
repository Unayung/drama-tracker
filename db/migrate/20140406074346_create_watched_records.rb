class CreateWatchedRecords < ActiveRecord::Migration
  def change
    create_table :watched_records do |t|
      t.integer :user_id
      t.integer :episode_id
      t.timestamps
    end
  end
end
