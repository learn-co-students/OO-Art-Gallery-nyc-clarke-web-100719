class Artist

  attr_reader :name, :years_experience
  @@all =[]

  def self.all
    @@all
  end
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all << self
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    all.map{|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    all.sort_by{|artist| -(artist.paintings.count * artist.years_experience)}.first
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
