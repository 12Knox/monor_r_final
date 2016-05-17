class AddColumnsToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :string
    add_column :likes, :photo_id, :string
  end
end
