# Variables, Data Types and Assignment 
# Variables are named places in our program that store information

box1 = 5        # box1 is a variable that contains an integer value 5
box2 = '5'      # box2 is a variable that contains a string '5'
box3 = 5.5      # box3 is a variable that contains a floating point number, 5.5 
box4 = true     # box4 is a variable that contains the 'boolean' value true 

box1 = box3     # we use assignment statements to store information in variables
puts box1.to_s 

box2 = box1 + box3   # we can also use expressions like box1 + box3 in assignments
puts box2.to_s 

# What do you think happens when we run this program (from terminal, ruby variables.rb)