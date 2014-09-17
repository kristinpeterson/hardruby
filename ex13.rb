# Unpacks user inputed comand line arguments (front loaded variables)
# and assigns variables.  Constant, unchanged after being assigned
first, second, third, chicken = ARGV
# Displays size of ARGV (number of variables assigned, depends on user input)
puts ARGV.size
# The following methods would display the file/program/script name
puts $PROGRAM_NAME
puts "#{$0}" 
# Displays string and script name (filename)
puts "The script is called: #{$0}"
# Displays first variable entered by user when running script
puts "Your first variable is: #{first}"
# Displays second variable entered by user when running script
puts "Your second variable is: #{second}"
# Displays third variable entered by user when running script
puts "Your third variable is: #{third}"
# Displays fourth variable entered by user when running script
puts "Your fourth variable is: #{chicken}"


# Displays string prompting user to answer question
print "What is your favorite pork dish? "
# Applies user input to variable pork
pork = STDIN.gets.chomp()
# Displays string utilizing newly assigned variable pork
puts "OOOH! I really like #{pork}! We have so much in common."


