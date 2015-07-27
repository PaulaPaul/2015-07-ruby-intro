# Methods do work when they are 'called', and return a value 
# The methods that are available depend on the type of variable

# For example, you can call .reverse on a string variable:
my_string = "hello methods!"
reversed_string = my_string.reverse 
puts reversed_string

# And, you can call the .sample method on an array variable
# Create an array of integer values to represent a six sided die, 
#   then use the array.sample method as a way to 'roll' the die and get a random value 
my_die = [1,2,3,4,5,6]
the_roll = my_die.sample 

# You can create your own methods, to do work and return values!
# Your methods only 'execute' or do work when they are called from other places
def flip_coin  # This block of code, from def to end, is the method definition
  coin = ['heads', 'tails']
  return coin.sample
end 

# This code calls the method ten times and prints the results returned 
10.times do
  puts flip_coin 
end
