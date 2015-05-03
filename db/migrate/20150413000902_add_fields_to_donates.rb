class AddFieldsToDonates < ActiveRecord::Migration
  def change
    add_column :donates, :entrepreneur_id, :integer
    add_column :donates, :donor_id, :integer
  end
end
