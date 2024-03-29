class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.text :first_name, null: false
    	t.text :last_name, null: false
    	t.text :email, null: false
    	t.text :password_digest, null: false
      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
