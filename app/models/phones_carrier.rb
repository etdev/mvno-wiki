class PhonesCarrier < ActiveRecord::Base
  belongs_to :phone
  belongs_to :carrier
end
