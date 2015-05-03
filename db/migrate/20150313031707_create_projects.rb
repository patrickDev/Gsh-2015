class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :region
      t.string :country
      t.string :project_type
      t.string :organization_name
      t.string :leader_name
      t.string :organization_type
      t.string :address
      t.string :organization_id
      t.text :description
      t.text :impact_people
      t.text :technical_assistance
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
