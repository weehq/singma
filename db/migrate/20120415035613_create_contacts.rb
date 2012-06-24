class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :name, :null => false
      t.string :address
      t.integer :postcode, :null => false
      t.string :phone, :null => false
      t.string :email, :null => false
      t.string :prefer_contact, :null => false
      t.text :bathroom_requirements, :null => false
      t.decimal :budget
      t.text :other_comments, :null => false

      t.timestamp :created_at
    end

    add_index :contacts, :name
  end

  def down
    remove_index :contacts, :name

    drop_table :contacts
  end
end