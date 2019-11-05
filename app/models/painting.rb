class Painting

  attr_reader :title, :price, :artist, :gallery 

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end
  def self.total_price
    price_array = all.map { |painting|
    painting.price 
    }
    # sum = 0
    # price_array.each do |price|
    #   sum += price
    # end
    # sum
    # price_array.reduce(:+)
    price_array.sum
  end

end