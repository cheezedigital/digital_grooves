class ItemsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
    def index
      @items = Item.all
    end

    def show
      find_item
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
