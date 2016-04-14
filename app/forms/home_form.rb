class HomeForm
  include ActiveModel::Model
  attr_accessor :phone_id, :network_id, :data_size

  def data_size_options
    [1, 2, 3, 5, 10, 15, 20].map{ |opt| ["#{opt}gb", opt] }
  end
end
