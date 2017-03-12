class ItemsController < ApplicationController

  def index
  	
  end

  def show
  	if @item = Item.where(id: params[:id]).first
  	#render "item show"
    else
    	render text:"Poge not found", status: 404
    end

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
