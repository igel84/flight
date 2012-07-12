class Voyage < ActiveRecord::Base
  attr_accessible :airport_to, :airpot_from, :arriving_at, :crash_at, :price, :time

  belongs_to :airpot_from, class_name: 'Airport', :foreign_key => 'airpot_from'
  belongs_to :airpot_to, class_name: 'Airport', :foreign_key => 'airpot_to'

  has_many :transfers, dependent: :destroy

end
