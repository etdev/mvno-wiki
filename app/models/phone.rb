class Phone < ActiveRecord::Base
  has_many :carriers, through: :phones_carriers
  has_many :phones_carriers
end
