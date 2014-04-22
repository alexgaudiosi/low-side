class AddFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :description, :text
    add_column :items, :price, :float
  end
end
