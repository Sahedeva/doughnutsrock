class CreateJoinTablePhotosCities < ActiveRecord::Migration
  def change
    create_join_table :photos, :cities
  end
end
