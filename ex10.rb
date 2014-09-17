# Escape Sequences (\t, \n, \\)

# \t tabs the line
tabby_cat = "\tI'm tabbed in."
# \n adds a new line
persian_cat = "I'm split\non a line."
# \\ double backslash allows a single backslash to be displayed
backslash_cat = "I'm \\ a \\ cat."

# A printed list, applied to variable fat_cat.  
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

# Displays the variables
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat