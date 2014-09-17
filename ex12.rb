# include vs. require

# Require Method : runs another file.  It also tracks what you have required in the
# past and won't require the same file twice.  To run another file without this
# added functionality, you can use the load method.
# You CAN requre a script that doesn't contain a library, such as a local script,
# you just need to enter the path name
# ex. require '../myDir/myScript'
# or if in same dir
# require_relative './my_super_script'

# Include Method : takes all the methods from another module and includes them into
# the current module.  This is a language-level thing as opposed to a file-level
# thing as with require.  The include method is the primary way to "extend" classes
# with other modules (usually referred to as mix-ins). For example, if your class
# defines the method "each", you can inclue the mixin moudle Enumerable and it can
# act as a collection.  This can be confusing as the include verb is used very
# differently in other languages.

# Ruby Libraries stored @ :
# Users/kristinpeterson/.rvm/rubies/ruby-1.9.3-p194/lib/ruby/1.9.1

# This line requires open-uri library to be utilized, this code will print the 
# source code for http://www.ruby-lang.org/en
require 'open-uri'

open ("http://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts f.base_uri			#<URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
	puts f.content_type		# "text/html"
	puts f.charset			# "iso-8859-1"
	puts f.content_encoding # []
	puts f.last_modified	# Thu Dec 05 02:45:02 UTC 2002
end