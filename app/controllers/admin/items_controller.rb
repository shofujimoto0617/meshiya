class Admin::ItemsController < ApplicationController
  def index
  end

  def new
  	@item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  	  redirect_to admin_item_path(@item), notice: "メニューを追加しました"
  	else
  	  render 'new'
  	end
  end

  private

  def item_params
  	params.require(:item).permit(:img, :name, :explanation, :genre_id, :price, :status)
  end
end
