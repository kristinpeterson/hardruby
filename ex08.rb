# assigns string "%s %s %s %s" to variable formatter
formatter = "%s %s %s %s"

# Displays string stored in variable formatter with assigned values for each format sequence
puts formatter % [1, 2, 3, 4]
# Displays string stored in variable formatter with assigned values for each format sequence
puts formatter % ["one", "two", "three", "four"]
# Displays string stored in variable formatter with assigned values for each format sequence
puts formatter % [true, false, false, true]
# Displays string stored in variable formatter with assigned values for each format sequence (Ultimately repeats formatter string * 4)
puts formatter % [formatter, formatter, formatter, formatter]
# Displays string stored in variable formatter with assigned values for each format sequence
puts formatter % [
	 "I had this thing.",
	 "That you could type up right.",
	 "But it didn't sing.",
	 "So I said goodnight."
	]

# no mistakes, like a baus