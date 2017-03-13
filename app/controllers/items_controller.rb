class ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	unless @item = Item.where(id: params[:id]).first
  	render text:"Poge not found", status: 404
    end

  end
  
  def new
  end

  def edit
  end

  def create
  	@item = Item.create(params[:item])
  end

  def update
  end

  def destroy
  end
 
end
