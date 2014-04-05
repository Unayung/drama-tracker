class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :user_id
      t.integer :drama_id
      t.timestamps
    end
  end
end
