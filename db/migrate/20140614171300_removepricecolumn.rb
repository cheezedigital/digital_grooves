class Removepricecolumn < ActiveRecord::Migration
  def change
    remove_column :items, :price
  end
end
