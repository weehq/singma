class CreateTestimonials < ActiveRecord::Migration
  def up
    create_table :testimonials do |t|
      t.string :name
      t.string :suburb
      t.text :comment

      t.string :active, :null => false, :default => 'Y'

      t.timestamp :created_at
      t.timestamp :updated_at
    end

    add_index :testimonials, :name
  end

  def down
    remove_index :testimonials, :name

    drop_table :testimonials
  end
end
