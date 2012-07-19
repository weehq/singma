class CreateLocations < ActiveRecord::Migration

  def up
    create_table :locations do |t|
      t.integer :postcode
      t.string :suburb

      t.string :active, :null => false, :default => 'Y'

      t.timestamp :created_at
    end

    add_index :locations, :postcode
    add_index :locations, :suburb
  end

  def down
    remove_index :locations, :suburb
    remove_index :locations, :postcode

    drop_table :locations
  end

end