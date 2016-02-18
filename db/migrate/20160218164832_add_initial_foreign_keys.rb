class AddInitialForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :mvnos, :carriers
    add_foreign_key :plans, :mvnos
    add_foreign_key :plans, :carriers
  end
end
