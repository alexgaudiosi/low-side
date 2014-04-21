class ItemsController < ApplicationController

	def index
    @items = Item.all
  end

  def new
    @Item = Item.new
  end

  def create
    @Item = Item.new params[:Item].permit(:description, :picture)

    if @Item.save
      redirect_to '/items'
    else
      render 'new'
    end
  end

  # def destroy
  #   @Item = Item.find params[:id]
  #   @Item.destroy

  #   flash[:notice] = 'Item successfully deleted.'

  #   redirect_to '/items'
  # end

end
