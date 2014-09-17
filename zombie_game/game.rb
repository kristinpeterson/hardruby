require './style'
require './menu'

#PUBLIC: locations
module Location

include Style
include Menu

	@weapons = %w(Fists)
	@current_location = ""
	 
	@action = ""
	@house_searched = false
	Style.header
	puts "You wake up disoriented from a night of debauchery, to hear the blaring"
	puts "of the TV emergency signal 'EVACUATION ADDRESS: 345 PLAINS ST. NY, NY'"
	puts "'Evacuation...?' you think to yourself. Suddenly, a wild zombie appears"
	puts "in the back yard.  What do you do?"
	puts "\n"
	@zombie = "

                               C C  /            
                              /<   /             
               ___ __________/_#__=o             
              /(- /(\\_\\________   \\              
              \\ ) \\ )_      \\o     \\             
              /|\\ /|\\       |'     |             
                            |     _|             
                            /o   __\\             
                           / '     |             
                          / /      |             
                         /_/\\______|             i         (   _(    <              
                         \\    \\    \\             
                          \\    \\    |            
                           \\____\\____\\           
                           ____\\_\\__\\_\\          
                         /`   /`     o\\          
                         |___ |_______|
  "
  puts @zombie

#PUBLIC: Start of game, starts at options, in case circled back does not display
# 			 intro text.
def Location.start
	@current_location = "Your House"
	Menu.options(specified = ["Find your car and EVACUATE", 
											 "Go to the back yard and kill the zombie",
											 "Search the house"])

	Menu.prompt

	if @action.to_i == 1
		jeep
	elsif @action.to_i == 2
		backyard
	elsif @action.to_i == 3
		search_house
	elsif @action.upcase == "W"
		method = __method__.to_s
		weapons_list(method)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		start
	elsif @action.upcase == "V"
		if @vehicle != nill
			puts "Your vehicle is : #{@vehicle}"
			puts "Your Fuel Guage Reads: #{@fuel}"
			start
		else
			puts "You have no vehicle at this time."
			start
		end
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		start
	end
end

#PUBLIC: Jeep location, options are specific to this location.
def Location.jeep
	@current_location = "Your Jeep"
	Style.header
	puts "\nYou run out front towards your jeep, there are zombies close by but"
	puts "you manage to slam it in reverse and GTFO!  The gas guage is low....."
	puts "But then again there are hourdes of zombies chasing you. Where to?"
	Style.border
	Menu.options(specified = ["Take my chances and gun it for the Evacuation Site", 
									 "Find a gas station"])

	@vehicle.push(:name => "Jeep", :fuel => 10/100)

	Menu.prompt

	if @action.to_i == 1
		evacuation_point(@vehicle)
	elsif @action.to_i == 2
		gas_station
	elsif @action.upcase == "W"
		method = __method__.to_s
		weapons_list(method)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		jeep
	elsif @action.upacase == "V"
		if @vehicle != ""
			puts "Your vehicle is : #{@vehicle}"
			puts "Your Fuel Guage Reads: #{@fuel}"
			jeep
		else
			puts "You have no vehicle at this time."
			jeep
		end
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		jeep
		end
end

#PUBLIC: House location, options are specific to this location.
def Location.house
	@current_location = "Your House"

	Menu.options(specified = ["Fight the zombie out back", 
									 "Find my car"])

	Menu.prompt

	if @action.to_i == 1
		backyard
	elsif @action.to_i == 2
		jeep
	elsif @action.upcase == "W"
		method = __method__.to_s
		weapons_list(method)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		house
	elsif @action.upacase == "V"
		if @vehicle != ""
			puts "Your vehicle is : #{@vehicle}"
			puts "Your Fuel Guage Reads: #{@fuel}"
			house
		else
			puts "You have no vehicle at this time."
			house
		end
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		house
	end
end

#PUBLIC: Search house function, finds butcher knife only if house was not
# 			 already searched previously
def Location.search_house
	@current_location = "Your House"
	Style.header
	if @house_searched == false
		puts "As you rummage through the house, the only weapon you find is a"
		puts "butcher knife."
		Style.add_border
		puts "Butcher Knife Added to Weapons Inventory"
		Style.add_border
		@weapons.push("Butcher Knife")
		@house_searched = true
		house
	else
		Style.border
		puts "You have already searched the house. Nothing of value is left."	
		house
	end
end

#PUBLIC: Backyard location, options are specific to this location.
def Location.backyard
	@current_location = "Your backyard"
	attack_weapon = choose_weapon
	if attack_weapon == "Fists"
		puts "As you fling the sliding glass door open the zombie turns to face you,"
		puts "and after expelling a low gurgling growl it begins ambling your way."
		puts "Unfortunately, Fists are no match for zombies.  Your face is eaten."
		death
	elsif attack_weapon == "Butcher Knife"
		puts "As you fling the sliding glass door open the zombie turns to face you,"
		puts "and after expelling a low gurgling growl it begins ambling your way."
		puts "Weilding the Butcher Knife, you lunge towards the zombie and manage"
		puts "to stick him in the head....good he's dead. But the knife is stuck!"
		puts "You hear another zombie approaching.  What do you do?"
		Style.border

		@weapons.delete("Butcher Knife")
		Menu.options(specified = ["Get the knife out of the dead zombie's head", 
								 "Run to your car and get to the Evacuation Point",
								 "Fist fight the approaching zombie"])
		
		Menu.prompt
		
		if @action.to_i == 1
			puts "You try to get the knife out, but it is really stuck in there..."
			puts "before you can release it, the zombie is at your rear.  Growling."
			puts "Hungry.  It's too late...your time on this good Earth has come to"
			puts "an end."
			death
		elsif @action.to_i == 2
			puts "You quickly jog around the side of the house...thankfully no zombies"
			puts "as you open the side gate, you can see your jeep in the driveway."
			puts "What a beautiful sight..."
			jeep
		elsif @action.to_i == 3
			puts "Your dukes are up and you're ready to fight as the zombie fast"
			puts "approaches you.  He grabs you by the arm and before you can even"
			puts "scream, you've been bitten...."
			puts "During the scuffle your knife falls to the ground, the zombie lunges"
			puts "towards you for another bite, and as you stumble back you trip and "
			puts "fall onto the knife.  Ironic..."
			death
		elsif @action.upcase == "W"
			method = __method__.to_s
			weapons_list(method)
		elsif @action.upcase == "L"
			puts "You are currently at: #{@current_location}"
			backyard
		elsif @action.upacase == "V"
			if @vehicle != ""
				puts "Your vehicle is : #{@vehicle}"
				puts "Your Fuel Guage Reads: #{@fuel}"
				backyard
			else
				puts "You have no vehicle at this time."
				backyard
			end
		else
			puts "Sorry, #{@action} is an invalid option, please try again."
			backyard
		end
	else
		death
	end
end

#PUBLIC: Evacuation Point location, options are specific to this location.
#
# @vehicle - contains user's vehicle info
def Location.evacuation_point(vehicle)
	Style.header
	@current_location = "EVACUATION POINT"
end

#PUBLIC: Gas Station location, options are specific to this location.
#
# @vehicle - contains user's vehicle info
def Location.gas_station(vehicle)
	Style.header
	@current_location = "Gas Station"
end

end