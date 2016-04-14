class Carrier < ActiveRecord::Base
  has_many :phones, through: :phones_carriers
  has_many :phones_carriers
  belongs_to :network
end
