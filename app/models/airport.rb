class Airport < ActiveRecord::Base
  belongs_to :city, :inverse_of => :airports, :include => :nation
  has_many :voyages
	
  attr_accessible :city_id, :name

  scope :find_by_city, lambda{ |name| {:include => :city, :conditions => ["cities.name LIKE ?", "#{name}%"]} }
  
  def info
  	"#{self.name} : #{self.city.name} : #{self.city.nation.name}"
  end

end
