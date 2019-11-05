class Artist

  attr_reader :name, :years_experience
  @@artist_all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artist_all << self
  end

  def self.all
    @@artist_all
  end

  #returns an array of all this artists paintings
  def paintings
    Painting.all.select{|painting_instance|
      self == painting_instance.artist
    }
  end

  def galleries # all the galleries of this artist 
    gallery_array = paintings.map{|my_painting_instance|
      my_painting_instance.gallery
    }
  end

  def cities 
    galleries.map do |my_galleries_instance| 
      my_galleries_instance.city 
    end 
  end 

  def self.total_experiences

    # years_of_experience = @@artist_all.map do |artist_istances|
    # artist_istances.years_experience #creates an array of years of experience
    # end 

    # years_of_experience.sum 

      @@artist_all.sum do |artist_istances|
        artist_istances.years_experience
      end 
  end 

  def self.most_prolific 
    @@artist_all.max_by { |artist|
    (artist.paintings.length) / (artist.years_experience).to_f
  } 
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
