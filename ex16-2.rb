# assigns comand line argument to variable filename
filename = ARGV.first

opened = File.open(filename, 'r')

puts File.read(opened)

opened.close

print "The file is closed: "
puts opened.closed?