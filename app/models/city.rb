class City < ActiveRecord::Base
  attr_accessible :name, :nation_id

  belongs_to :nation
  has_many :airports, :inverse_of => :city

  #accepts_nested_attributes_for :airports

end
