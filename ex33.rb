puts "what the fuck are you looking at? enter a number: "; userinput = gets.to_i
puts "now enter a number to increment by, damnit: "; increment=gets.to_i

def loopy(userinput, increment)
	i = 0
	numbers = []

	# for i in (0..userinput-1) ...another option, no longer need increment var as it will cycle through the range even if value of i changes
	while i < userinput
		puts "At the top i is #{i}"
		numbers.push(i)

		i = i + increment
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	numbers
end

numbers = loopy(userinput, increment)

puts "The numbers: "

for num in numbers
	puts num
end