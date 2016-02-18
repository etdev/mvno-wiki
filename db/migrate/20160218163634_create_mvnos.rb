class CreateMvnos < ActiveRecord::Migration
  def change
    create_table :mvnos do |t|
      t.string :name, unique: false
      t.string :home_page
      t.belongs_to :carrier

      t.timestamps null: false
    end
    add_index :mvnos, :name, unique: true
  end
end
