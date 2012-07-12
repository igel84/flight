class Transfer < ActiveRecord::Base
  attr_accessible :airport_id, :arriving_at, :crash_at, :day, :voyage_id

  belongs_to :voyage, counter_cache: true

end
