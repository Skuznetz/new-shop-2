class ItemsController < ApplicationController

  def index
  	@items = Item.all 
  	render tex: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")
  end
end
