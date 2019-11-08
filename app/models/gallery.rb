class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end 
  def paintings
    Painting.all.select do |instance|
      instance.gallery == self
    end 
  end 
  def artists
    paintings.map do |instance|
      instance.artist
    end 
  end 
  def artist_names
    artists.map do |instance|
      instance.name
    end 
  end 

  def most_expensive_painting
    paintings.max_by do |instance|
      instance.price
    end 
  end 


end
