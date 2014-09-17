ten_things = "Apples Oranges Crows Telephone Light Sugar"
 
puts "Wait there's not 10 things in that list, let's fix that."

# .split(patern=$;,[limit]) 
# divides string into substrings based on a delimiter, returns array of substrings
# .split(' ') == .split() == .split($;)
# $; is a global variable whose default is nill, string is split on whitespace (' ') 
# limit: 
# If limit is omitted, trailing null fields are suppressed. 
# If limit is a positive number, at most that number of fields will be returned 
# (if limit is 1, the entire string is returned as the only entry in an array). 
# If negative, there is no limit to the number of fields returned, and trailing null fields are not suppressed.
stuff = ten_things.split(' ')

# %w 
# allows you to delimit elements in an array by a space w/o quotes
# array = ["one", "two", "three"]   ==   array = %w[one two three]
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

# .length
# returns number of elements in self
# while length != 10 (ie less than 10) continue to add more_stuff to stuff
while stuff.length != 10
	# .pop(n)
	# Removes the last element in self and returns it, nil i f empty
	# if n is given, removes last n elements in array and returns array of removed elements
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	# .push(obj, ...)
	# pushes given object(s) to end of array, and returns entire array (opposite effect of .pop)
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

# returns [1] element in array
puts stuff[1]

# returns last element in array
puts stuff[-1] # whoa! fancy

# removes last element in stuff and returns value
puts stuff.pop()

# .join(seperator=$,) -> str
# returns string created by converting each element in array into string, seperated by given seperator
# if seperator = nil, it uses current $,   
# if both seperator and $, are nil, it uses an empty string
# tldr; this adds a space in between each element in the array and returns string of space speerated elements
puts stuff.join(' ') # what? cool!

# .values_at(selector, ...) -> new_ary
# returns an array contaning the elements in self corresponding to the given selector(s)
# the selector can be either integer indices or ranges
# below, .join is also called to seperate elements w/ the # symbol
puts stuff.values_at(3,5).join('#') # super stellar!
