class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

  def menu_items
    MenuItem.all.select do |menu_item_instance|
      menu_item_instance.restaurant_instance == self
    end
  end

  def add_menu_item(dish_name, price)
    MenuItem.new(self, dish_name, price)
  end

  def print_menu #is this supposed to be a class method? It seems like it refers to an indvidual Restaurant instance, so I made it an instance method. 
    MenuItem.all.each do |menu_instance|
      if menu_instance.restaurant_name == name
        puts "You'll find #{menu_instance.dish_name} on our menu and the cost is $#{'%.2f'%menu_instance.price.to_f} dollars."
      end
    end
  end

  def self.biggest_menu
    restaurant_name_array = MenuItem.all.map {|menu_instance| menu_instance.restaurant_name}
    restaurant_name_hash = restaurant_name_array.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
    restaurant_with_biggest_menu = restaurant_name_hash.max_by{|k,v| v}
    return restaurant_with_biggest_menu[0]
  end

  def tasting_menu_cost
    tasting_menu_prices = []
    MenuItem.all.each do |menu_instance|
      if menu_instance.restaurant_name == name
        tasting_menu_prices << menu_instance.price
      end
    end
    "$#{'%.2f'%tasting_menu_prices.sum.to_f}"
  end


end # end of Restaurant class

=begin
- [X] `Restaurant#menu_items` 
    - *returns* an array of all MenuItem instances associated with the restaurant.
- [X] `Restaurant#add_menu_item` 
    - takes a *dish_name* (string) and a *price* (integer) as arguments
    - *returns* a new *MenuItem* associated with the restaurant.
- [X] `Restaurant.print_menu` 
    - *output to the terminal* the dish name and price of each MenuItem associated with the restaurant. You can format the output string however you'd like!
- [X] *bonus* `Restaurant.biggest_menu`
    - *returns* the restaurant that has made the most items on their menu.
- [X] *bonus* `Restaurant#tasting_menu_cost`
    - *returns* the total cost of ALL menu items associated with the restaurant.
=end