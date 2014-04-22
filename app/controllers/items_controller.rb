class ItemsController < ApplicationController

	def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @Item = Item.new params[:item].permit(:description, :picture, :price)

    if @Item.save
      redirect_to '/items'
    else
      render 'new'
    end
  end

  def destroy
    @Item = Item.find params[:id]
    @Item.destroy

    flash[:notice] = 'Item successfully deleted.'

    redirect_to '/items'
  end

  def show
    @item = Item.find params[:id]
  end

  def item_params
    params[:item].permit(:description, :price, :picture)
  end

end
