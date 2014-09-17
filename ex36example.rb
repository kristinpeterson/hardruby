def prompt 
  puts ">"
end

def dead(why)
  puts "#{why}"
  Process.exit(0)
end

def start()
  puts "-------------------------------"
  puts "You roll to Jumbo's Clown Room to meet up with your buddies"
  puts "Violet winks at you from the corner."
  puts "What do you do first?"
  puts "1) Get a drink"
  puts "2) Meet with friends"
  puts "3) Head to the bathroom"
  puts "(Please respond with a numbaaa)"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "1"
    drink_type()
  elsif next_move.include? "2"
    friends()
  elsif next_move.include? "3"
    bathroom()
  else
    dead("Way to F that up! You are too drunk to even decide what to do")
  end
end

def friends()
  puts "You meet up with your friends / bros / buddies / homies / cronies / whoever"
  puts "Gary says 'Do you want a drink?' [y/n]"
  puts "What do you say?"
  
  prompt; next_move = gets.chomp
  
  if next_move == "y"
    drink_type()
  elsif next_move == "n"
    puts "What would you like to do? Meet girls? [y/n]"
    prompt; another_move = gets.chomp
  
    if another_move == "y"
      hit_on_girls()
    else
      puts "Just go get a drink"
      drink_type()
    end
  else 
    puts "Not sure, try again!"
    start()
  end
end
  
def hit_on_girls()
  puts "You stroll up to the bar with your friend, Gary, who is down to wingman"
  puts "You notice two girls together, and another group of three."
  puts "Which group do you and Gary head to?"
  puts "1) Group of Two"
  puts "2) Group of Three"
  puts "3) You aren't drunk enough yet"
  puts "(Please respond with a numbaaa)"
  
  prompt; next_move = gets.chomp
  if next_move.include? "1"
    two_girls()
  elsif next_move.include? "2"
    three_girls()
  elsif next_move.include? "3"
    puts "Go get your liquid courage!"
    puts "---------------------------"
    drink_type()
  else 
    dead("You go grab a cigarette outside and the doorman doesn't let you back in")
  end
end
  
def two_girls()
  puts "You walk towards the two girls, whispering to gary on the way over."
  puts "Gary asks 'What are we going to say???'"
  puts "1) My friend and I have been trying to figure out which school you both went to. Minnesota, right?"
  puts "2) Can I buy you a drink or do you just want the money?"
  puts "3) Great legs, what time do they open?"
  puts "4) Do you guys come here often?"
  puts "(Please respond with a numbaaa)"
  
  prompt; next_move = gets.chomp
  
  if next_move == "1"
    puts "One of the girls says 'How did you know I went to Minnesota?"
    puts "Done! After a drink and some conversation, she's ready to leave"
    puts "------------------------------------"
    sneak()
  elsif next_move == "2"
    puts "They both laugh at your confidence and respect that you at least have balls"
    puts "They respond with 'Just the money' while their boyfriends come up behind them."
    puts "You and Gary back off to go get another drink"
    drink_type()
  elsif next_move == "3"
    dead("Not classy. One girl slaps you and leaves, then Gary pees himself")
  elsif next_move == "4"
    dead("You used the lamest pick-up line on EARTH. Both girls pretend they aren't listening and Gary pukes from nervousness")
  else 
    dead("You choke up and Gary runs away. You're F'ed.")
  end
end
  
def three_girls()
  puts "You approach the three girls and realize your fly is down"
  puts "Gary doesn't notice so he keeps walking up to them"
  puts "What do you do?"
  puts "1) Run after him!"
  puts "2) Pretend you don't know him and get to the bathroom"
  puts "(Please respond with a numbaaa)"
  
  prompt; next_move = gets.chomp
  
  if next_move == "1"
    puts "You catch up to him in time, but all three girls notice your embarassed face"
    puts "One chick points out your fly and you recover with a clever remark"
    puts "Not clever enough, and they all walk away awkwardly. Back to the bar you go"
    puts "--------------------------------"
    drink_type()
    
  elsif next_move == "2"
    bathroom()
  else 
    puts "I can't understand that"
  end
end
  
def bathroom()
  puts "You walk into the dark bathroom. It smells like fresh pee"
  puts "You don't mind too much and head to the urinal"
  puts "Another guy walks in wearing all black and pees right next to you"
  puts "He asks, 'Hey man, do you need a little something tonight?'"
  puts "You respond with:"
  puts "1) Definitely! Get me some of that snow"
  puts "2) Girls, please"
  puts "3) No thanks, I'm good"
  
  prompt; next_move = gets.chomp
  
  if next_move == "1"
    blow()
  elsif next_move == "2"
    ass()
  elsif next_move == "3"
    puts "The sketchy guy says 'Are you sure, man?' [y/n]"
    
    prompt; another_move = gets.chomp
    if another_move == 'n'
      puts "'I hate uncertain people!'"
      puts "The man in black slams your face against the wall and runs out."
      puts "You are passed out until the bouncer comes in and asks if you're okay"
      puts "You come to, and need to find your friends"
      puts "------------------------"
      friends()
    else 
      puts "'Fine, get the F out of here'"
      puts "You head back for a drink quickly"
      puts "---------------------"
      drink_type()
    end
  
  else 
    puts "You pretend you don't understand English and get to the bar quickly"
    drink_type()
  end
end

def blow()
  puts "'I don't have any of that, but I've got better: CRACK'"
  puts "Want some? [y/n]"
  prompt; next_move = gets.chomp
  
  if next_move == 'y'
    puts "You give the crackhead 15 bucks and light up a pipe over the urinal"
    puts "You fumble with it and accidently drop it after hitting it"
    puts "The sketchy man FLIPS OUT, beats you and starts robbing you"
    puts "You are left a bloody mess on the floor"
    puts "---------------------------------"
    dead("The bouncer finds your cracked out, bleeding self and throws you out")
  elsif next_move == 'n'
    puts "That's not your jam"
    puts "You part ways peacefully and head to your friends"
    puts "-----------------------"
    friends()
  else
    dead("He kills you for not answering correctly [and he thinks you\'re a cop]")
  end
end

def ass()
  puts "Good, I've been looking for a nice screw."
  puts "Do you accept? [y/n]"
  prompt; next_move = gets.chomp
  
  if next_move == "y"
    puts "Wow man, you are a serious f'ing loser"
    dead("No words")
  elsif next_move == 'n'
    puts "That's not your jam"
    puts "He pulls out his junk anyway and you mace the shit out of him"
    puts "You part ways and head to see your friends"
    puts "-----------------------"
    friends()
  else
    dead("Things go black. Bad news bears")
  end
end


def drink_type()
  puts "What do you want to drink?"
  puts "Your choices are whiskey, beer, martinis, cider, and whatever else you want"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "whiskey"
     blond_bitch()
  elsif next_move.include? "beer"
     beer_me()
   else 
     dead("A guy comes up to you and taps your shoulder. He slips something into your drink and takes you home. dumb.")
   end
end

def beer_me()
  puts "The barkeep asks you which beer:"
  puts "1) PBR"
  puts "2) Bud Platinum"
  puts "3) Dogfish IPA"
  puts "4) O'Douls"
  puts "(Please respond with a numbaaa)"
  
  really_drunk = false
  
  while true
    prompt; next_move = gets.chomp
    
    if next_move == "2"
      rugby_slut()
    elsif next_move == "3" and not really_drunk
      puts "Wow dude, you downed that. Grab another"
      really_drunk = true
    elsif next_move == "4" and really_drunk
      dead("Get the F out of my bar you retard.")
    elsif next_move == "1"
      indie_chick()
    else
      puts "I got no idea what that means."
    end
  end
end

def rugby_slut()
  puts "A butch rugby chick approaches you (probably because you are drinking Bud Platinum)"
  puts "Since you are drink Bud Platinum you find her moderately attractive"
  puts "You now have two choices, buy her a drink to slam her or flee fast"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "drink"
    sneak()
  elsif next_move.include? "flee"
    puts "Smart"
    puts "----------"
    start()
  else 
    dead("The bouncer comes and kicks you out")
  end  
end

def sneak()
  puts "You sneak past your friends and get back to your house."
  puts "But, do you have a rubber? [y/n]"

  prompt; next_move = gets.chomp

  if next_move == "y"
    puts "The condom breaks and she won't have an abortion"
    puts "Prepare to pay for child support"
    puts " "
    start()
  else 
    puts "She kicks you out"
    dead()
  end
end

def indie_chick()
  puts "You start talking to a moderately attractive indie girl. Her favorite band is Animal Collective."
  puts "Soon you realize that she's prententious and full of it. Except for the fact that she slept with all of the Local Natives"
  puts "You figure that it'd be cool to hang because then you'd be eskimo bros with Local Natives"
  puts "Buy her a drink? [y/n]"
  prompt; next_move = gets.chomp
  
  if next_move == "y"
    sneak()
  else 
    "You slip away to grab a different drink"
    drink_type()
  end
end

def blond_bitch()
  puts "(Way to pick a man's drink, by the way)"
  puts "Three girls walk up to you: 2 blond and one brunette"
  puts "Do you:"
  puts "Buy them drinks"
  puts "Tell a joke"
  puts "Pee yourself"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "joke"
    puts "Your joke was kind of funny, but not funny enough to entertain three girls at once. The brunette likes it and hangs out"
    sneak()
  elsif next_move.include? "buy"
    dance()
  else
    puts "You can't handle the Jumbo's"
    dead("Bouncer kicks your ass out")
  end
end

def dance()
  puts "You make your own luck and keep buying them more drinks"
  puts "You start breaking out some great dance moves. They are all impressed"
  puts "What type of music are you dancing to?"
  
  prompt; next_move = gets.chomp
  
  if next_move.include? "pop"
    puts "They love pop too, so you make an exit with all three"
    smash_out()
  else
    puts "You dance like a moron and they start flirting with other bros. Fail"
  end
end

def smash_out()
  puts "Your dreams have come true and you played all the cards right."
  puts "__________________________"
  Process.exit(0)
end
  
  
puts "What's your name?"
prompt; name = gets.chomp

start()