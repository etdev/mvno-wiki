class AddNetworkIdToCarriers < ActiveRecord::Migration
  def change
    add_reference :carriers, :network, index: true, foreign_key: true
  end
end
