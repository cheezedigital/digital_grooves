
class ItemsController < ApplicationController

  before_action :find_product, only: [:show, :edit, :update, :destroy]

    def index
      @items = Item.all
      @choice = [" ", 'A - Z', "Z - A", "Highest - Lowest Price", "Lowest - Highest Price"]
    #  if params[:order]
    #  Item.order("#{params[:order]} ASC").all
    ap = params[:order]
    ap = URI.unescape(ap.to_s)
      if ap == "Highest - Lowest Price"
        id = Item.order("price DESC")
        #highest price to lowest
      elsif ap == 'Lowest - Highest Price'
        id =  Item.order("price ASC")
        # sorts from a - z
      elsif ap == 'A - Z'
        id = Item.order("name ASC")
        #sorts from z - a
      elsif ap == "Z - A"
        id = Item.order("name DESC")
      else
        id = Item.order("name ASC")
      end
      @items = id
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

  def destroy
    @item.destroy
    redirect_to items_path

  end

    private
    def find_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name)
    end

end
