class SiteController < ApplicationController

  def index
    @items = Item.all 
  end

  def about

  end
end
