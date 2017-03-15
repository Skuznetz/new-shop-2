class ItemsController < ApplicationController

	before_filter :find_item, only: [:show,:edit,:update,:destroy]

  def index
  	@items = Item.all
  end

  def show
  	unless @item 
  	render text:"Poge not found", status: 404
    end

  end
  
  def new
  	@item = Item.new
  end

  def edit
   
  end

  def create
  	@item = Item.create(item_params)
  	@item.save
  	if @item.errors.empty?
  		redirect_to item_path(@item)
  	else
  		render "new"
  	end
  end

  def update
  	@item.save
  	if 
  		@item.update(item_params)
  		@item.errors.empty?
  		redirect_to item_path(@item)
  	else
  		render "edit"
  	end
  end

  def destroy
  
  	@item.destroy
  	redirect_to item_path
  end

def upvote
end


  private
    def item_params
      params.require(:item).permit(:name,:price,:description,:weight)
    end

    def find_item
      	@item = Item.find(params[:id])
    end
end
