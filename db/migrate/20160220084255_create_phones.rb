class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name, null: false
      t.string :model_no

      t.timestamps null: false
    end
    add_index :phones, :name
    add_index :phones, :model_no
  end
end
