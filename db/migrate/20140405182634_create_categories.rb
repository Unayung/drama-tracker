class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    add_column :dramas, :category_id, :integer, :after => :name
  end
end
