class Painting

  attr_reader :title, :price, :artist, :gallery
  attr_accessor 

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @artist = artist
    @price = price
    @@all << self
    @gallery = gallery
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.sum_by { |painting|
    painting.price
  }
  end

end
