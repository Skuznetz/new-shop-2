class Item < ApplicationRecord
	validates :price,numericality: {greater_than:0,allow_nil: true}
	validates :name, :description,presence: true

	
	has_many :positions
	has_many :carts,through: :positions

	has_many :comments,as: :commentable
	
    has_and_belongs_to_many :orders
   # attr_acessible :price,:name,:real,:weight,:description
    # after_initialize {}
    # after_save       {}
    # after_create     { category.inc(:item_count,1)}
    # after_update     {}
    # after_destroy    { category.inc(:items_count,-1)}
end
