#calculationex.rb --- test
puts "Here is my test calculation using Ruby!"

puts "Calculated Hourly Rate", 60000 / 2080.0

puts "Leave Without Pay Calculation:"
puts "Hours not worked during pay period:", 45
puts "Regular Monthly Salary:", 5000
puts "Less leave without pay adjustment", -(60000/2080.0 * 45)
puts "Adjusted Salary for this pay period", 5000 - 60000/2080.0 * 45