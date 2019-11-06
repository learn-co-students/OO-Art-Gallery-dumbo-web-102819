require_relative '../config/environment.rb'


a1 = Artist.new("Picasso", 20)
a2 = Artist.new("Van Gogh", 25)
a3 = Artist.new("leonardo", 30)

g1 = Gallery.new("low Paint", "Ny")
g2 = Gallery.new("Paint box", "London")
g3 = Gallery.new("Mez House", "Istanbul")

p1 = Painting.new("Guernica", 2_000_000, a1, g1)
p2 = Painting.new("The Starry Night", 1_000_000, a2, g2)
p3 = Painting.new("Mona lisa", 3_000_000, a3, g3)






binding.pry

puts "Bob Ross rules."
