class Item < ApplicationRecord
	validates :price,numericality: {greater_than:0,allow_nil: true}
	validates :name, :description,presence: true

	
	has_many :positions
	has_many :carts,through: :positions

	has_many :comments,as: :commentable
	has_many :image,as: :imageable
	after_save :save_image

	def image=(i)
	  if !image || !new_record?
	  	@image - Image.create(i.merge({imageable: self}))
	  end
	end

	def save_image
	end
   # attr_acessible :price,:name,:real,:weight,:description
    # after_initialize {}
    # after_save       {}
    # after_create     { category.inc(:item_count,1)}
    # after_update     {}
    # after_destroy    { category.inc(:items_count,-1)}
end
