# There are many ways to represent a roll of two die! 
# The examples below define methods that return an array of two numbers representing a toss of two die.
def roll_dice_rand
  roll1 = rand(1..6)
  roll2 = rand(1..6)
  return [roll1, roll2]
end

def roll_dice_array
  die = [1,2,3,4,5,6]
  roll1 = die.sample
  roll2 = die.sample
  return [roll1, roll2]
end


def roll_dice_hash
  # A hash is a collection of 'key value' pairs. 
  # This gives us a way to create and roll a die with different colors on each face
  die = {'blue' => 1, 'red' => 2, 'green'=> 3,'yellow' => 4, 'orange' => 5, 'black' => 6}
  
  # the set of all the values in a hash can be treated as an array using 'hash variable'.values 
  # the set of all the keys in a hash can be treated as an array using 'hash variable'.keys 
  roll1 = die.values.sample
  roll2 = die.values.sample
  return [roll1, roll2]
  # This returns the two values from the toss of the dice, but not their colors. See below for a twist on this...
end 

def roll_dice_hash2
  # This is the same as 'roll_dice_hash', but it returns an array with two hashes containing the keys (color) and values from the toss 
  die = {'blue' => 1, 'red' => 2, 'green'=> 3,'yellow' => 4, 'orange' => 5, 'black' => 6}
  
  # the set of all the values in a hash can be treated as an array using 'hash variable'.values 
  # the set of all the keys in a hash can be treated as an array using 'hash variable'.keys 
  roll1 = die.values.sample
  roll2 = die.values.sample
  # below, roll1 is the key to the value rolled, and die[roll1] is the value.  Likewise with roll2.
  # instead of returning an array of two numbers, this returns a array of two hashes, each containing the key value pair rolled
  return [{roll1 => die[roll1]}, {roll2 => die[roll2]}]
end 

# Ok. All those methods above are just different ways we can ask the 
# computer to roll two die and give us the results.
# The dice game code starts executing below.  Methods don't execute unless 
# they are 'called' from your code.  The first line below 'calls' roll_dice_rand 
# and stores the results in a variable called 'first_roll'...
first_roll = roll_dice_rand
puts "First roll.  Computer rolled: " + first_roll.inspect
if first_roll[0] == first_roll[1]
  puts "Wow, doubles!"
end

# Just for fun, we'll call the 'roll_dice_array' method for the second roll.
# The results are stored in the variable 'second_roll'
second_roll = roll_dice_array
puts "Second roll.  You rolled: " + second_roll.inspect
if second_roll[0] == second_roll[1]
  puts "Wow, doubles!"
end

# Now that we have the first and second rolls, see who wins...
puts " "
puts "Let's add up the rolls and see who wins:"
first_roll_total = first_roll[0] + first_roll[1]
second_roll_total = second_roll[0] + second_roll[1]

if  first_roll_total == second_roll_total
  puts "Computer roll is the same as your roll, with a total of: " + first_roll_total.to_s + ". Tie!"
elsif first_roll_total > second_roll_total
  puts "Computer wins with a total of: " + first_roll_total.to_s + ". Better luck next time!"
else
  puts "You win with a total of: " + second_roll_total.to_s + ". Congrats!"
end

