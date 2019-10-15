require_relative '../config/environment.rb'

a1 = Artist.new("jack", 25)
a2 = Artist.new("alex", 30)
a3 = Artist.new("kate", 10)

g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("WHITNEY", "NYC")
g3 = Gallery.new("LACMA", "LA")

p1 = Painting.new("my_painting", 250, g1, a1)
p2 = Painting.new("my_other_painting", 300, g2, a1)
p3 = Painting.new("ides", 4000, g1, a2)
p4 = Painting.new("spring", 50000, g3, a3)


binding.pry

puts "Bob Ross rules."
