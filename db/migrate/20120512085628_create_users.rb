class CreateUsers < ActiveRecord::Migration

  def up
    create_table :users do |t|
      t.string :username, :null => false
      t.string :password
      t.string :active, :null => false, :default => 'Y'
      t.timestamp :created_at
      t.timestamp :updated_at
    end

    add_index :users, :username, :unique => true
  end

  def down
    remove_index :users, :username

    drop_table :users
  end

end