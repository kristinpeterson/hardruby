name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
height_in_cm = height * 2.54
weight = 180 # lbs
weight_in_kilos = weight * 0.453592
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d centimeters tall." % height_in_cm
puts "He's %d pounds heavy." % weight
puts "He's %d kilos heavy." % weight_in_kilos
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]