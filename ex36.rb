def prompt()
	print "> "
end

def start()
	puts "Jake,"
	puts "Fin wants to go adventuring in the Dark Abyss,"
	puts "but you're feeling like kicking up some dirt at the intergalactic dog park..."
	puts "Do you want to join Fin in the dark abyss or convince him to go to the dog park with you?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "abyss"
		abyss()
	elsif next_move.include? "park"
		park()
	else
		dead("I guess you COULD do #{next_move} instead...maybe next time...")
	end
end

def dead(why)
	puts "#{why} Well...that was fun..."
	Process.exit(0)
end

def abyss()
	puts "Fin and Jake arrive at the Dark Abyss."
	puts "There is a dreary entryway with two dark hallways, marked by signs"
	puts "Sign 1: DO NOT ENTER. LEAVE. GO AWAY!"
	puts "Sign 2: COME ON DOWN, WE WON'T BITE"
	puts "(sign 2 appears to have a giant bite mark...fishy...)"
	puts "Do you want to go down the hallway marked by sign 1 or 2?"

	prompt; next_move = gets.to_i

	if next_move == 1
		gargoyles()
	elsif next_move == 2
		moat()
	else
		dead("Sorry, #{next_move} isn't an option...guess you'll have to go home.")
	end
end

def park()
	puts "After much convincing, Fin decides to join you on your journey to the intergalactic dog park."
	puts "When you arrive the park is closed...should have checked to see if they were open online..."
	puts "Do you want to break in to the park or just go home?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "break"
		break_in()
	elsif next_move.include? "home"
		dead("You both go the conservative route and head home safely.")
	else
		dead("Fin thinks #{next_move} seems risky. He abandons you...")
	end
end

def break_in()
	puts "Upon breaking in to the intergalactic dog park an alarm sounds."
	puts "Interstellar police are on their way!"
	puts "What do you want to do?  Run, hide or fight the police?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "run"
		dead("You both run home to safety.")
	elsif next_move.include? "hide"
		puts "You find a meteor with lots of crevices to hide in. While inside, you hear a low growl..."
		puts "OH NO! An intergalactic pit bull!"
		puts "Fin suggests that Jake woo the pitbull...but you could also distract the pitbull and run home or fight it."
		puts "What will you do????"

		prompt next_move = gets.chomp.downcase

		if next_move.include? "woo"
			dead("Jake tries to woo the pitbull with his charm...unfortunately the pitbull doesn't swing that way.  He eats your faces off.")
		elsif next_move.include? "distract"
			dead("Jake tosses a bone in the pit bull's direction, and Fin and Jake are able to escape home to safety.")
		elsif next_move.include? "fight"
			dead("You try to fight the pitbull, alas he is too strong for you and eats your faces off.")
		else
			dead("Fin thinks #{next_move} seems risky. He abandons you...")
		end
	elsif next_move.include? "fight"
		dead("The police aprehend you with ease, and you are both sent to intergalactic jail.")
	else 
		dead("Fin thinks #{next_move} seems risky. He abandons you...")
	end
end

def moat()
	puts "Fin and Jake enter a room with a large moat."
	puts "On the other side of the moat is a doorway, and there seems to be treasure in the other room."
	puts "There is a bucket filled with muck at the foot of the moat."
	puts "Next to the bucket is a long rope hanging from the endlessly vast abyss."
	puts "How would you like to proceed?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "swim"
		dead("You both dive head first into the moat, unfortunately there was a swarm of supersharks awaiting your arrival.  You're chum now...")
	elsif next_move.include? "bucket"
		dead("You approach the bucket and it falls into the water...which prompts a swarm of activity underneath the waters surface. The moat appears to be swimming with supersharks!!! Oh my!!!  You both run home to safety.")
	elsif next_move.include? "rope"
		puts "You grab the rope and valantly swing across the moat, as supersharks are nipping at your feet...just barely missing you."
		treasure()
	else
		dead("Although #{next_move} sounded like a good option at the time, you've decided it would be best to go home to safety.")
	end
end

def gargoyles()
	puts "Fin and Jake enter a room with three grandiose Gargyoles drinking what appears to be tea."
	puts "There is a doorway behind them, it looks like there is treasure in the next room."
	puts "What would you like to do?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "tea"
		dead("The Gargloyles siphon the blood from your veins and continue with their 'tea party'.  Fun fact: Gargoyles don't drink tea.")
	elsif next_move.include? "treasure"
		dead("The Gargoyles noticed your presence and swiftly eat your faces off.")
	elsif next_move.include? "home"
		dead("You sneak away and return home safely.")
	else
		dead("The Gargoyles noticed your presence and swiftly eat your faces off.")
	end
end

def treasure()
	puts "Fin and Jake enter a room FILLED with treasure."
	puts "Take the treasure or call it a day and head home?"

	prompt; next_move = gets.chomp.downcase

	if next_move.include? "treasure"
		puts "Three gargoyles charge the room, do you run, fight or hide?"
		prompt; next_move = gets.chomp.downcase
		if next_move.include? "run"
			dead("While attempting to escape, you stumble into the moat and a swarm of supersharks consumes you.")
		elsif next_move.include? "fight"
			dead("You bravely fight the Gargoyles, to a valiant end, returning home with all their treasure!")
		elsif next_move.include? "hide"
			dead("The Gargoyles sniff you out and eat your faces off.")
		else
			dead("Gargoyles ate your face off.")
		end
	elsif next_move.include? "home"
		dead("Home!?! I thought this was Adventure Time...")
	else
		dead("Three gargoyles charge the room and eat your faces off.")
	end


end

start()