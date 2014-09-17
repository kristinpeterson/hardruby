require './style'
require './menu'

class Game
	include Style
	include Menu

	@weapons = %w(Fists)
	@current_location = ""
	@action = ""
	@house_searched = false

	puts "\n"
	puts "$" * 80
	puts "$" * 80
	puts "\n"
	puts "You wake up disoriented from a night of debauchery, to hear the blaring"
	puts "of the TV emergency signal 'EVACUATION ADDRESS: 345 PLAINS ST. NY, NY'"
	puts "'Evacuation...?' you think to yourself. Suddenly, a wild zombie appears"
	puts "in the back yard.  What do you do?"
	puts "\n"
  puts ZOMBIE

#PUBLIC: Start of game, starts at options, in case circled back does not display
# 			 intro text.
def Game.start
	@current_location = "Your House"
	Menu.options(@vehicle, specified = ["Find your car and EVACUATE", 
											 "Go to the back yard and kill the zombie",
											 "Search the house"])

	@action = Menu.prompt

	if @action.to_i == 1
		jeep
	elsif @action.to_i == 2
		backyard
	elsif @action.to_i == 3
		search_house
	elsif @action.upcase == "W"
		Menu.weapons_list(@weapons, __method__.to_s)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		start
	elsif @action.upcase == "V"
		if @vehicle != nil
			Menu.vehicle_info(@vehicle, __method__.to_s)
		else
			puts "You have no vehicle at this time."
			start
		end
	elsif @action.upcase == "EXIT"
		Process.exit(1)
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		start
	end
end

#PUBLIC: Jeep location, options are specific to this location.
def Game.jeep
	@current_location = "Your Jeep"

	if @room_visited == nil
	Style.header
	puts "\nYou run out front towards your jeep, there are zombies close by but"
	puts "you manage to slam it in reverse and GTFO!  The gas guage is low....."
	puts "But then again there are hourdes of zombies chasing you. Where to?"
	@room_visited = true
	
	@vehicle = { name: "Jeep", fuel: "E **-------- F\t(20% full)" }
	end

	Menu.options(@vehicle, specified = ["Take my chances and gun it for the Evacuation Site", 
									 "Find a gas station"])

	@action = Menu.prompt

	if @action.to_i == 1
		@vehicle[:fuel] = "E *--------- F\t(10% full)"
		evacuation_point(@vehicle)
	elsif @action.to_i == 2
		gas_station
	elsif @action.upcase == "W"
		Menu.weapons_list(@weapons, __method__.to_s)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		jeep
	elsif @action.upcase == "V"
		if @vehicle != nil
			Menu.vehicle_info(@vehicle, __method__.to_s)
		else
			puts "You have no vehicle at this time."
			jeep
		end
	elsif @action.upcase == "EXIT"
		Process.exit(1)
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		jeep
		end
end

#PUBLIC: House location, options are specific to this location.
def Game.house
	@current_location = "Your House"

	Menu.options(@vehicle, specified = ["Fight the zombie out back", 
									 "Find my car"])

	@action = Menu.prompt

	if @action.to_i == 1
		backyard
	elsif @action.to_i == 2
		jeep
	elsif @action.upcase == "W"
		Menu.weapons_list(@weapons, __method__.to_s)
	elsif @action.upcase == "L"
		puts "You are currently at: #{@current_location}"
		house
	elsif @action.upcase == "V"
		if @vehicle != nil
				Menu.vehicle_info(@vehicle, __method__.to_s)
		else
			puts "You have no vehicle at this time."
			house
		end
	elsif @action.upcase == "EXIT"
		Process.exit(1)
	else
		puts "Sorry, #{@action} is an invalid option, please try again."
		house
	end
end

#PUBLIC: Search house function, finds knife only if house was not
# 			 already searched previously
def Game.search_house
	@current_location = "Your House"
	Style.header
	if @house_searched == false
		puts "As you rummage through the house, you find a bad ass knife."
		puts KNIFE
		Style.add_border
		puts "Knife Added to Weapons Inventory"
		Style.add_border
		@weapons.push("Knife")
		@house_searched = true
		house
	else
		Style.border
		puts "You have already searched the house. Nothing of value is left."	
		house
	end
end

#PUBLIC: Backyard location, options are specific to this location.
def Game.backyard
	@current_location = "Your backyard"

	@attack_weapon = Menu.choose_weapon(@weapons) if @attack_weapon == nil

	if @attack_weapon == "Fists" && @room_visited == nil
		puts "As you fling the sliding glass door open the zombie turns to face you,"
		puts "and after expelling a low gurgling growl it begins ambling your way."
		puts "Unfortunately, Fists are no match for zombies.  Your face is eaten."
		death
	elsif @attack_weapon == "Knife" && @room_visited == nil
		puts "As you fling the sliding glass door open the zombie turns to face you,"
		puts "and after expelling a low gurgling growl it begins ambling your way."
		puts "Weilding the Butcher Knife, you lunge towards the zombie and manage"
		puts "to stick him in the head....good he's dead. But the knife is stuck!"
		puts "You hear another zombie approaching.  What do you do?"
		@room_visited = true

		@weapons.delete("Knife")
		Menu.options(@vehicle, specified = ["Get the knife out of the dead zombie's head", 
								 "Run to your car and get to the Evacuation Point",
								 "Fist fight the approaching zombie"])
		
		@action = Menu.prompt
		
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
			death
		elsif @action.upcase == "W"
			Menu.weapons_list(@weapons, __method__.to_s)
		elsif @action.upcase == "L"
			puts "You are currently at: #{@current_location}"
			backyard
		elsif @action.upcase == "V"
			if @vehicle != nil
				Menu.vehicle_info(@vehicle, __method__.to_s)
			else
				puts "You have no vehicle at this time."
				backyard
			end
		elsif @action.upcase == "EXIT"
			Process.exit(1)
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
# current_vehcile - contains user's vehicle info
def Game.evacuation_point(current_vehicle)
	Style.header
	@current_location = "EVACUATION POINT"
end

#PUBLIC: Gas Station location, options are specific to this location.
#
# current_vehicle - contains user's vehicle info
def Game.gas_station(current_vehicle)
	Style.header
	@current_location = "Gas Station"
end

#PUBLIC: Prints GAME OVER text and ends game
def Game.death
	puts "\nDefinitely not your best choice. GAME OVER"
	puts FLAVOR_DEAD[rand(FLAVOR_DEAD.length())]
	Process.exit(1)
end



end

game = Game.start