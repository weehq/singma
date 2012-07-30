class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title, :null => false
      t.text :description
      t.string :image, :null => false

      t.string :active, :null => false, :default => 'Y'

      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
