class ChangeJobCompletionOnQuotes < ActiveRecord::Migration
  def up
    change_column :quotes, :job_completion, :date, :null => true
  end

  def down
    change_column :quotes, :job_completion, :date, :null => false
  end
end