# Assigns value of 100 to variable cars
cars = 100
# Assigns value of 4 to variable space_in_car
space_in_a_car = 4
# Assigns value of 30 to variable drivers
drivers = 30
# Assigns value of 90 to variable passengers
passengers = 90
# Assigns value of the result of (cars - drivers) to variable cars_not_driven
cars_not_driven = cars - drivers
# Assigns value of drivers to variable cars_driven
cars_driven = drivers
# Assigns value of the result of (cars_driven * space-in_a_car) to variable carpool_capacity
carpool_capacity = cars_driven * space_in_a_car
# Assigns value of the result of (passengers / cars_driven) to variable average_passengers_per_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# Extra Credit: 
# Error rec'd, "ex4.rb:8in '<main': undefined local variable or method 'car_pool_capacity' for main:Object (NameError)"
# error is on line 8 of code, variable s/b 'carpool_capacity' NOT 'car_pool_capacity'

# More Extra Credit:
# 1. Is it necesary to use floating point 4.0 in line 2, what happens if it is just 4
#     No it is not necesary, if it was just 4 it would read "We can transport 120 people today."  
#     Since there's no such thing as a fraction of a person, I believe no floating point is necesary
# 2. Remember that 4.0 is a "floating point" number. Find out what that means.
#     done and done - wikipedia / stackoverflow ftw
# 3. Wirte comments above each of the variable assignments.
# 4. Make sure you know that = is called (equals) and that it's making names for things.
# 5. Remember _ is an underscore character
# 6. Try running IRB as a calculator like you did before and use variable names to do your calculations. Popular variable names are also i, x, and j.