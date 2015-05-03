class CreatePimos < ActiveRecord::Migration
  def change
    create_table :pimos do |t|
      t.string :area

      t.timestamps null: false
    end
  end
end
