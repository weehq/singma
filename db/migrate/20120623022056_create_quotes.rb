class CreateQuotes < ActiveRecord::Migration
  def up
    create_table :quotes do |t|
      t.string :name, :null => false
      t.string :phone, :null => false
      t.integer :postcode, :null => false

      t.string :ground_floor, :null => false
      t.string :access_difficulty, :null => false
      t.date :job_completion, :null => false
      t.string :full_renovation, :null => false
      t.text :other_renovation, :null => false

      t.timestamp :created_at
    end

    add_index :quotes, :name
  end

  def down
    remove_index :quotes, :name

    drop_table :quotes
  end
end