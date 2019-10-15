require_relative '../config/environment.rb'

a1 = Artist.new("Jimmy", 2)
a2 = Artist.new("Johnny", 3)
a3 = Artist.new("Jacky", 5)

g1 = Gallery.new("Cool Gallery", "New York")
g2 = Gallery.new("Neat Gallery", "Hong Kong")
g3 = Gallery.new("Pretty Gallery", "London")

p1 = Painting.new("Lona Misa", 1000, a1, g1)
p2 = Painting.new("Guerra", 2000, a1, g2)
p3 = Painting.new("Test Test", 20000, a2, g2)
p4 = Painting.new("Weird", 2123, a3, g2)
p5 = Painting.new("Grona Pisa", 3424, a1, g1)
p6 = a3.create_painting("Hong Kong Skyline", 3432, g2)


binding.pry

puts "Bob Ross rules."
