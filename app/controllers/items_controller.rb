class ItemsController < ApplicationController

	before_filter :find_item, only: [:show,:edit,:update,:destroy,:upvote]
    #before_filter :check_if_admin, only: [:edit,:update,:new,:create,:destroy]
  def index
  	@items = Item.where(" price >=?",params[:price_from]).order("votes_count")
  end

  def expensive
  	@items = Item.where("price > 1000")
  	render "index"
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
  @item.increment!(:votes_count)
  redirect_to action: :index
end


  private
    def item_params
      params.require(:item).permit(:name,:price,:description,:weight)
    end

    def find_item
      	@item = Item.where(id: params[:id]).first
      	render_404 unless @item
    end

   
end
