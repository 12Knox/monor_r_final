class AddColumnsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :likes_count, :integer
  end
end
