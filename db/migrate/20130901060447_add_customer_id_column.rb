class AddCustomerIdColumn < ActiveRecord::Migration
  def up
    add_column :galleries, :customer_id, :integer
  end

  def down
    remove_column :galleries, :customer_id
  end
end
