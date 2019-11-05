require_relative '../config/environment.rb'

frank = Artist.new("Frank", 20)
james = Artist.new("James", 30)
flatiron_gallery = Gallery.new("flatiron_gallery", "Brooklyn")
mona_lisa = Painting.new("Mona Lisa", 100, flatiron_gallery, frank)
starry_night = Painting.new("Starry Night",500,flatiron_gallery,james)

binding.pry

puts "Bob Ross rules."
