# apple = {color: "red", type: "food", price: 2}

# grapes = {color: "green", type: "food", price: 3}

# paper = {:color => "white", :type => "supplies", :price => 5}

# p "At our store apples are #{apple[:color]}, classified as a #{apple[:type]} and sell for $#{apple[:price]} each."

# p "At our store grapes are #{grapes[:color]}, classified as a #{grapes[:type]} and sell for $#{grapes[:price]} each."

# p "At our store paper is #{paper[:color]}, classified as a #{paper[:type]} and sell for $#{paper[:price]} each."

class Item
  attr_reader :item_name, :item_color, :item_type, :item_price
  attr_writer :item_price

  def initialize(item_options)
    @item_name = item_options[:item_name]
    @item_color = item_options[:item_color]
    @item_type = item_options[:item_type]
    @item_price = item_options[:item_price]
  end

  def print_info
    p "#{item_name} is colored #{item_color}, is a #{item_type} and sells for $#{item_price}."
  end
end

item1 = Item.new(
  item_name: "Apple",
  item_color: "red",
  item_type: "food",
  item_price: 2
)

item1.print_info

p item1.item_price


