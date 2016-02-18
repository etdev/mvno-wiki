class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.integer :monthly_cost, null: false
      t.integer :data_size, null: false
      t.integer :data_speed
      t.integer :contract_length
      t.integer :initial_cost
      t.integer :sim_count, default: 1
      t.boolean :sound_included, default: false
      t.belongs_to :mvno
      t.belongs_to :carrier

      t.timestamps null: false
    end
    add_index :plans, :name, unique: true
    add_index :plans, :data_size
    add_index :plans, :contract_length
    add_index :plans, :sound_included
  end
end
