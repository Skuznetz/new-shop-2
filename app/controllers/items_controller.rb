class ItemsController < ApplicationController

  def index
  	
  end

  def show
  	@item = Item.where(id: params[:id]).firs
  	render "item show"
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
