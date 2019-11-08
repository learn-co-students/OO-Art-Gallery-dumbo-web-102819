require_relative '../config/environment.rb'

a1 = Artist.new("A", 1)
a2 = Artist.new("B", 2)
a3 = Artist.new("C", 3)
a4 = Artist.new("D", 4)

g1 = Gallery.new("G", "Gettysburg")
g2 = Gallery.new("H", "Hopetown")
g3 = Gallery.new("I", "Incheon")
g4 = Gallery.new("J", "Jarlsburg")

p1 = Painting.new("P", 4000, a1, g1)
p2 = Painting.new("Q", 1000, a2, g2)
p3 = Painting.new("R", 2000, a3, g3)
p4 = Painting.new("S", 3000, a4, g4)
p5 = Painting.new("T", 5000, a1, g2)






binding.pry

puts "Bob Ross rules."
