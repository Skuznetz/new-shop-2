class ItemsController < ApplicationController

  def index
  	@items = Item.all 
  	render text: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")
  end

  def show
  end
  
  def new
  end

  def edit
  end

  def create
  	render text: "item created"
  end

  def update
  end

  def destroy
  end
 
end
