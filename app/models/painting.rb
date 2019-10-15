class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, price ,artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    self.class.all << self
  end

  def self.total_price
    all.map{|paiting| paiting.price}.sum
  end

end
