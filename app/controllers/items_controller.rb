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
  	@item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
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
  		@item = Item.create(item_params)
  	@item.save
  	if @item.errors.empty?
  		redirect_to item_path(@item)
  	else
  		render "new"
  end

  def destroy
  end
  private
    def item_params
      params.require(:item).permit(:name,:price,:description,:weight)
    end
end
