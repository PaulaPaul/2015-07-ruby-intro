# Roll one six sided die ten times and count the times you roll each number (1-6)

# Create an array of integer values to represent a six sided die
my_die = [1,2,3,4,5,6]

# Create 'counters' to count the number of times we roll each value  
roll_1_count = 0 
roll_2_count = 0 
roll_3_count = 0 
roll_4_count = 0 
roll_5_count = 0 
roll_6_count = 0 

# Roll the die ten times and record the results
10.times do 
  result = my_die.sample  # the sample method returns a random selection from an array 
  
  if result == 1 
    roll_1_count = roll_1_count + 1 
    
  elsif result == 2 
    roll_2_count = roll_2_count + 1 
    
  elsif result == 3 
    roll_3_count = roll_3_count + 1 
    
  elsif result == 4 
    roll_4_count = roll_4_count + 1 
    
  elsif result == 5 
    roll_5_count = roll_5_count + 1 
    
  elsif result == 6 
    roll_6_count = roll_6_count + 1 
  end 

end 

# Write (put) the results to the terminal
puts "In ten rolls of the die, there were:"
puts "  " + roll_1_count.to_s + " 1s, " + roll_2_count.to_s + " 2s, " + roll_3_count.to_s + " 3s, "
puts "  " + roll_4_count.to_s + " 4s, " + roll_5_count.to_s + " 5s, and " + roll_6_count.to_s + " 6s! "

