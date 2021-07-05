require_relative '../config/environment.rb'

a1 = Artist.new('Picaso', 30)
a2 = Artist.new('Poloc', 20)
a3 = Artist.new('Banksy', 100)

g1 = Gallery.new('one', 'NY')
g2 = Gallery.new('two', 'Chicago')
g3 = Gallery.new('three', 'Detroit')

p1 = a1.create_painting('Woman on Stairs', 100_000, g1)
p2 = a1.create_painting('Stuff', 10, g2)
p3 = a2.create_painting('Other Stuff', 200_000_000, g3)
p4 = a2.create_painting('Purple Stuff', 200_000, g1)
p5 = a3.create_painting('Green Stuff', 402104, g2)
p6 = a3.create_painting('Modern Stuff', 500_000_000_000, g3)
p7 = a3.create_painting('Post-Modern Stuff', 10, g1)






binding.pry

puts "Bob Ross rules."
