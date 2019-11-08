class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end 

  def paintings
    Painting.all.select do |instance|
      instance.artist == self
    end 
  end 

  def galleries 
    paintings.map do |instance|
      instance.gallery
    end 
  end 

  def cities
    galleries.map do |instance|
      instance.city
    end
  end 
  def self.total_experience 
    self.all.sum do |instance|
      instance.years_experience
    end 
  end 
  def self.most_prolific 
    self.all.max_by do |instance|
      instance.paintings.count * 1.00 / instance.years_experience
    end
  end
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
end



