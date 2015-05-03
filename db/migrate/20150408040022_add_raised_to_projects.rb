class AddRaisedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :raised, :decimal
  end
end
