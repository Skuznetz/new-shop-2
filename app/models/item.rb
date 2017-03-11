class Item < ApplicationRecord
	validates :price,numericality: {greater_than:0,allow_nil: true}
  # attr_accessible :price,:name,:real,:weight,:description
end
