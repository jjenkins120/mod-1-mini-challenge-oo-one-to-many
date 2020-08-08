require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)

r1 = Restaurant.new("Wendy's", "Fast-Food")
r2 = Restaurant.new("Immm", "Thai")

m1 = MenuItem.new(r1, "Hamburgers", 3)
m2 = MenuItem.new(r1, "Fries", 2)
m3 = MenuItem.new(r1, "Nuggets", 3)
m4 = MenuItem.new(r2, "Som Tam", 5)
m5 = MenuItem.new(r2, "Pad Thai", 10)
# m6 = MenuItem.new(r2, "Pad See Eew", 10)
# m7 = MenuItem.new(r2, "Pad Prik Wan", 10)
# m8 = MenuItem.new(r2, "Gwitiao", 10)

binding.pry
"pls"