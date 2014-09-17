# Displays "How old are you? " and prompts user input, which is stored as variable age
# When recalling variable age, a new line is added after the variable when using gets
print "How old are you? "
age = gets.chomp()
# Displays "How tall are you? " and prompts user input, which is stored as variable height
# When recalling variable height, a new line is added after the variable when using gets
print "How tall are you? "
height = gets.chomp()
# Displays "How much do you weigh? " and prompts user input, which is stored as variable weight
# When using gets with the .chomp method, the new line that would normally appear after the variable is called is suppressedrecalling 
print "How much do you wiegh? "
weight = gets.chomp()

# Displays string "So, you're -age- years old, -height- tall and -wieght- heavy."
puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."

# google(ruby gets) : gets stores user input as variable + terminating record separator (aka. new line)

# google(ruby chomp) : gets.chomp stores user input as variable and suppresses the new line

# number = gets.chomp.to_i : stores variable as integer

print "How much do you make per month? "
monthly_salary = gets.chomp.to_i

annual_salary = monthly_salary * 12
puts "So, your annual salary is #{annual_salary}."