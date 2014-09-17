people = 30
cars = 40
buses = 15

if cars > people 
	puts "We should take the cars."
# elsif adds another condition to check for if previous statement was false
elsif cars < people
	puts "We should not take the cars."
# if all previous statements were false...else runs
else 
	puts "WE can't decide."
end

if buses > cars
	puts "That's too many buses."
elsif buses < cars
	puts "Maybe we should take the buses."
else 
	puts "We still can't decide."
end

if people > buses
	puts "Alright, let's just take the buses."
else
	puts "Fine, let's stay home then."
end