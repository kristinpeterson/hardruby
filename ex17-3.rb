from_file, to_file = ARGV
#one liner
File.open(to_file, 'w+').write(File.open(from_file).read())
