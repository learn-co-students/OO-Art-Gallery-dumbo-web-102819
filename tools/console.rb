require_relative '../config/environment.rb'

a1 = Artist.new("Bob", 2)
a2 = Artist.new("Tim", 3)
a3 = Artist.new("Rob", 4)

g1 = Gallery.new("Cl gallery","soho")
g2 = Gallery.new("flatiron","wallstreet")
g3 = Gallery.new("sony","uptown")

p1 = Painting.new("Mona", 4, a1, g1)
p2 = Painting.new("Lisa", 5, a2, g2)
p3 = Painting.new("Eric", 6, a3, g3)

binding.pry

puts "Bob Ross rules."
