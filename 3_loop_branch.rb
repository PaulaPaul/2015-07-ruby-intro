# Looping and Branching

# Looping and Branching are ways to control the flow of your program
# There are many ways to write a 'loop' or block of code that runs multiple times 
10.times do 
  puts "I'm looping 10 times!"
end 


for loop_count in 1..10 do 
  puts "I'm looping 10 times!"
end 

# In the examples above, we don't control the loop counter.  Below, we do!
loop_count = 0 
while loop_count <= 10 do 
  puts "I'm looping 10 times!"
  loop_count = loop_count +1
end 

# If you write an 'infinite loop', you can use CTRL-C on your keyboard to stop the program
# Here's an example of an infinite loop (commented out - to run it remove the #s : 
# loop do
#   puts "this is an infinite loop!"
# end 

# Branching allows us to run different blocks of code depending on the situation.
# We've used if...elsif... elsif... else... end statements for branching 
coin = ['heads', 'tails', 'lands on the side']
heads_count = 0 
tails_count = 0 

10.times do 
  result = coin.sample
  if result == 'heads'
    puts 'heads!'
    heads_count = heads_count + 1 
    
  elsif result == 'tails'
    puts 'tails!'
    tails_count = tails_count + 1 
    
  elsif result == 'lands on the side'
    puts 'That never happens!'
  end
end 

