# Flip a coin!
# Our 'coin' is an array of two strings 'heads' and 'tails'
coin = ['heads', 'tails']

puts "Welcome to the coin flip!  I'll flip a coin 10 times and tell you how many came up 'heads' and 'tails'"
puts "Hit enter when you're ready!"
gets 

# arrays provide a method called 'sample' that randomly retuns one of the members of the array. 
# flip the coin 10 times and store the results in a variable called 'results'
# keep track of the number of times we get 'heads' or 'tails' using the variables 'heads_count' and 'tails_count'
heads_count = 0 
tails_count = 0 
guess_correctly_count = 0

10.times do
  puts "I'm going to toss the coin. Enter 1 if you think it will be heads, anything else for tails."
  puts 
  guess = gets.chomp.to_i  #convert the string '1', or other input to an integer, stored in the variable 'guess'
  
  results = coin.sample
  if results == 'heads'
    heads_count = heads_count + 1 
  else
    tails_count = tails_count + 1
  end
  
  if (guess == 1 && results == 'heads') || (guess !=1 && results == 'tails')
    puts results + "! You guessed correctly!"
    guess_correctly_count = guess_correctly_count + 1 
  else  
    puts "Sorry, wrong guess! Better luck next time."
  end
  
end 

puts "I flipped the coin ten times!"  
puts "Heads came up " + heads_count.to_s + " times, and tails came up " + tails_count.to_s + " times."
puts "You guessed correctly " + guess_correctly_count.to_s + " times."
puts 
