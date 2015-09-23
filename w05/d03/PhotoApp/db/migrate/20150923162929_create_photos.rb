class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :path, null: false
      t.text :caption
      t.integer :height
      t.integer :width
      t.text :title, index: true

      t.timestamps null: false
    end
  end
end
