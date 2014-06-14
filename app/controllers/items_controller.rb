class ItemsController < ApplicationController

  def create
    @item = Item.create
  end

  def new
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path
    else
      render.new 
  end


end
