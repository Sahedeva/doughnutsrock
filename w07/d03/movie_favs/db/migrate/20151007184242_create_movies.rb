class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :omdb_id
      t.integer :year

      t.timestamps null: false
    end
  end
end
