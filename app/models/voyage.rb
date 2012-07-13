class Voyage < ActiveRecord::Base
  attr_accessible :airport_to_id, :airport_from_id, :arriving_at, :crash_at, :price, :day

  belongs_to :airport_from, class_name: 'Airport', :foreign_key => 'airport_from_id'
  belongs_to :airport_to, class_name: 'Airport', :foreign_key => 'airport_to_id'

  has_many :transfers, dependent: :destroy

  #def crash_at
  #	Time.zone(read_attribute(:crash_at))
  #end

end
