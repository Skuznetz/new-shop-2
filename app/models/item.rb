class Item < ApplicationRecord
	validates :price,numericality: {greater_than:0,allow_nil: true}
	validates :name, :description,presence: true

    after_initialize {}
    after_save       {}
    after_create     { category.inc(:item_count,1)}
    after_update     {}
    after_destroy    { category.inc(:items_count,-1)}
end
