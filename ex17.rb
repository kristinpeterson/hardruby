from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

input = File.open(from_file).read()

#puts "The input file is #{input.length} bytes long"

#puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w+').write(input)

puts "Alright, all done."

puts input


TESTREQUIRE = "require statement worked!"
