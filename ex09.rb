# Here's some new strange stuff, remember type it exactly.

# Assigns string "Mon Tue Wed Thu Fri Sat Sun" to variable days
days = "Mon Tue Wed Thu Fri Sat Sun"
# Assigns string "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug" (\n will new line so that each month has it's own line) to variable months
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# Displays string "Here are the days: " followed by data stored in variable days
puts "Here are the days: ", days
# Displays string "Here are the months: " followed by data stored in variable months
puts "Here are the months: ", months

# Displays paragraph of text, as many lines as your little heart desires. 
# You can replace "PARAGRAPH" with any name, 
# syntax is <<NAME              # the instance of NAME at the beginning is applying the identifier "NAME" as the signifier to be used to end the "paragraph"
#                ...
#                ...
#            NAME               # the instance of NAME at the end, ends the "paragraph"  
puts <<PARAGRAPH
There's something going on here.
With the PARAGRAPH thing
We'll be able to type as much as we like.
Even 4 lines if we want, or 5 or 6.
PARAGRAPH