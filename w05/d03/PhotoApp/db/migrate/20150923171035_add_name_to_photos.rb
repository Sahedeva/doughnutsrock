class AddNameToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :name, :text
  end
end
