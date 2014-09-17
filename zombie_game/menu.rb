require './style'

module Menu

include Style

#PUBLIC: Prints players options, first those specified by the location which
# 			 called the method, and then the default options are displayed
# 			 (Weapons List, Current Location, Vehicle Info, & Quit Game)
#
# specified - an array of location specified options
def self.options(vehicle, specified)
	Style.border
	puts "OPTIONS:\n\n"
	i = 1
	for option in specified do
	print "#{i} \t #{specified[i-1]}"
	puts
	i += 1
	end
	print "W \t See Weapons List"
	puts
	print "L \t See current location"
	puts
	print "V \t Vehicle info" if vehicle != nil
	puts
	puts "EXIT \t EXIT GAME"
	puts "\n(You must enter a valid option after the prompt '8==D')"
	Style.border
end

#PUBLIC: prints the promt and obtains players option selection
#
#Returns String containing user input (@action)
def self.prompt
	puts "\n"
	print "8==D "
	@action = gets.chomp
	puts "\n"
	return @action
end

#PUBLIC: Displays weapons inventory
# 
# method - the name of the method where weapons_list was called from
#
#Returns player to location where weapons list was called
def self.weapons_list(weapons, method)
		@weapons = weapons
		puts "^" * 80
		puts "Weapon Inventory:\n"
		@weapons.each { |weapon| puts "\n #{weapon} \n"}
		puts "v" * 80
		return_location = "Game.#{method}"
		eval return_location
end

#PUBLIC: Lets player choose a weapon to equip
# 
# Returns the weapon chosen by the player
def self.choose_weapon(weapons)
	@weapons = weapons
	Style.header
	puts "Wait a second...before you go all kill bill on some zombie ass..."
	puts "\nChoose Weapon to Equip:"
	i = 1
	for weapon in @weapons do 
		print i 
		print "\t"
		print weapon
		print "\n"
		i += 1
	end
	Style.border
	@action = prompt
	Style.border
	return @weapons[@action.to_i-1]
end

def self.vehicle_info(vehicle, method)
	puts "Vehicle Make: \t #{vehicle[:name]}"
	puts "Fuel Guage: \t #{vehicle[:fuel]}"
	return_location = "Game.#{method}"
	eval return_location
end

end