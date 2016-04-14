class CreatePhonesCarriers < ActiveRecord::Migration
  def change
    create_table :phones_carriers do |t|
      t.belongs_to :phone, index: true, foreign_key: true
      t.belongs_to :carrier, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
