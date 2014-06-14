module ItemsHelper



  def sorter(choice = [])
    choice.each do |e|
      #lowest price to highest
      if choice == 'Highest - Lowest Price'
        @items = @items.sort_by { |hsh| hsh[:price] }
        render: new
        #highest price to lowest
      elsif choice == 'Lowest - Highest Price'
        @items = @items.sort_by { |hsh| hsh[:price] }.reverse
        render: new
        # sorts from a - z
      elsif choice == 'A - Z'
        @items = @items.sort_by { |hsh| hsh[:name] }
        render: new
        #sorts from z - a
      elsif choice == "Z - A"
        @items = @items.sort_by { |hsh| hsh[:name] }.reverse
        render: new
      else
        @items
        render: new
      end
    end
  end
end
