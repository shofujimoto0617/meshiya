class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  	@item = Item.new
  end

  def show
    @item = Item.find(params[:id])
    item_price = @item.price
    @price_tax = Item.price_tax(item_price)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  	  redirect_to admin_item_path(@item), notice: "「#{@item.name}」を追加しました"
  	else
  	  render 'new'
  	end
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_items_path, notice: "「#{@item.name}」を変更しました"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path, notice: "「#{@item.name}」を削除しました"
  end

  private

  def item_params
  	params.require(:item).permit(:img, :name, :explanation, :genre_id, :price, :status)
  end
end
