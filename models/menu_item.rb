class MenuItem

    attr_reader :restaurant_instance, :dish_name
    attr_accessor :price

    @@all = []

    def initialize(restaurant_instance, dish_name, price)
        @restaurant_instance = restaurant_instance
        @dish_name = dish_name
        @price = price
        @@all << self
    end
    
    def self.all
        @@all
    end

    def restaurant_name
        self.restaurant_instance.name
    end

end # end of MenuItem class




=begin
Create a MenuItem class. The class should have these methods:
- [X] `MenuItem#initialize` 
    - takes a *restaurant* (Restaurant instance), a *dish_name* (string), and a *price* (integer) as arguments
- [X] `MenuItem#dish_name` 
    - *returns* a string. _Should not_ be able to change after the MenuItem is created.
- [X] `MenuItem#restaurant` 
    - *returns* a restaurant instance. _Should not_ be able to change after the MenuItem is created.
- [X] `MenuItem#price` 
    - *returns* an integer. _Should_ be able to change after the MenuItem is created.
- [X] `MenuItem.all` 
    - *returns* all the MenuItem instances.
- [X] `MenuItem#restaurant_name` 
    - *returns* the name (string) of the restaurant associated with the menu item instance
=end