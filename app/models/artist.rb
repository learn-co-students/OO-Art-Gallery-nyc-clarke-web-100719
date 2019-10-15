class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    self.class.all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end

  def self.total_experiece
    all.sum(&:years_experience)
  end
  
  def self.most_prolific
    all.max_by { |artist| artist.paintings.count / artist.years_experience.to_f }
  end
end
