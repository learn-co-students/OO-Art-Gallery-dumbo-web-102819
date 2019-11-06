class Gallery

  attr_reader :name, :city
  @@all =[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  # `Gallery.all`
  #   * Returns an `array` of all the galleries
  
  def paintings
   Painting.all.select do |painting|
      painting.gallery  == self
   end
  end
   #   * `Gallery#paintings`
    # * Returns an `array` of all paintings in a gallery
  
  
    def artists
      paintings.map do |painting|
      painting.artist
    end 
    end 
  
  
    #* `Gallery#artists 
  # Returns an `array` of all artists that have a painting in a gallery
  
  
  
  
    def artist_name 
    paintings.map do |painting|   
    painting.artist.name 
    end 
  end 
  # * Returns an `array` of the names of all artists that have a painting in a gallery
  
  

  def most_expensive_painting
   paintings.max_by { |x| x.price }
   
  end
end 

    # * Returns an `instance` of the most expensive painting in a gallery

  
  
  











# * `Gallery#artist_names`
  # * Returns an `array` of the names of all artists that have a painting in a gallery

