require_relative '../config/environment.rb'


art1 = Artist.new("Brad", 8)
art2 = Artist.new("Peter", 1)
art3 = Artist.new("Brian", 10)

gal1 = Gallery.new("Art+Live","CA")
gal2 = Gallery.new("Art8","NY")
gal3 = Gallery.new("8art","NJ")

pant1 = Painting.new("Everything",10000,art1,gal2)
pant2 = Painting.new("Egg",100,art2,gal1)
pant2 = Painting.new("Panic",1000000,art1,gal1)

binding.pry

puts "Bob Ross rules."
