require_relative "lib/Animal.rb"
require_relative "lib/Species.rb"
require_relative "lib/Zoo.rb"
require 'pry'


# Bakery -< Desert -< Ingredient

# Species -< Animal >- Zoo

#Test your code here
baboon = Species.new("Baboon", 10000)
leopard = Species.new("Leopard", 600)

z1 = Zoo.new("Twinkie", "Houston")

a1 = Animal.new(baboon, 5, "Michael")

a1.zoo = z1

a2 = Animal.new(leopard, 5, "John")

a2.zoo = z1

a3 = Animal.new(leopard, 5, "Ivan")

a3.zoo = z1


binding.pry
puts "done"
