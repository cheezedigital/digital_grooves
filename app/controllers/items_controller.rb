class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
    def index
      @items = Item.all
    end

  def create
   @item = Item.new(item_params)
   if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
   end

  def new
    @item = Item.new
  end

  def show

  end

  def edit

  end

  def update
    if @item.update_attributes(item_params)
       redirect_to products_path
    else
      render :edit
    end
  end

    private
    def find_item
      @item = Item.find(params[:id])
    end

    private
    def item_params
      params.require(:item).permit(:name)
    end
end
