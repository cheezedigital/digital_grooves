class ItemsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
    def new
      @items = Item.all
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
end
