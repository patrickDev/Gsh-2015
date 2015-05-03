class AddFieldsToPimos < ActiveRecord::Migration
  def change
    add_column :pimos, :project_id, :integer
    add_column :pimos, :user_id, :integer
  end
end
