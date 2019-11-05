class Gallery

  attr_reader :name, :city

  @@all_galleries = []


  def initialize(name, city)
    @name = name
    @city = city
    @@all_galleries << self
  end

  def self.all
    @@all_galleries
  end

  def paintings
    Painting.all.select { |painting|
    painting.gallery == self
  }
  end

  def artists
    paintings.map { |painting_instance|
    painting_instance.artist
  }
  end

  def artist_names # Gives an array of all artists names in that gallery
    artists.map { |artist|
    artist.name
  }
  end

  def most_expensive_painting
    paintings.max_by { |painting|
      painting.price
    }
  end

end
