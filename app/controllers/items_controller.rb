class ItemsController < ApplicationController
    def new
      @items = Item.all
    end

    def show
      @item = Item.find(params[:id])
    end



    private
end
