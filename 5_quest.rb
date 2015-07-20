def ice_quest 
  puts "You have a sled.  How many dogs will you take on your quest?  (Enter a number)"
  
  dogs = gets.chomp.to_i  
  if dogs < 3
    puts "That won't be enough to pull your sled!"
  elsif dogs > 8 
    puts "You won't be able to feed that many dogs during your journey!"
  else
    puts "Good choice. You will need to carry food for your dogs, with tools and weapons for your quest.  Choose a direction: north, east or west:"
    direction = gets.chomp.downcase
    case direction
      when 'north'
        puts "Heading further " + direction + " will freeze your dogs!."
      when 'east'
        puts "Heading " + direction + " leads to an impenetrable wall of ice and dead end."
      when 'west'
        puts "Heading " + direction + " will bring you good fortune!."
    end
  end
  
end 

def jungle_quest 
end 

def ocean_quest 
end 
###### code begins to execute here ######
puts "Hello! What is your name?"
name = gets.chomp

puts "Welcome to the quest, " + name + ".  You must choose your quest: enter jungle, ocean or ice."
choice = gets.chomp.downca se

case choice
  when 'ice'
    puts "You chose the " + choice + " quest.  It is a perilous and cold journey."
  
  when 'jungle'
    puts "You chose the " + choice + " path.  It is a long and challenging journey that will require much strength."
  
  when 'ocean'
    puts "You chose the " + choice + " path.  It is a journey full of temptations, riches and fame."
    
  else
    puts "That was not a wise choice...  you have met a tragic fate."
end 

puts "Thanks for playing!"

  