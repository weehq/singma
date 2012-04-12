class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.text :message
      t.timestamp :created_at

      t.timestamps
    end
  end
end
