require_relative './methods.rb'

#Asks user to input their name, and stores into name variable
puts "Welcome to the Roulette App, what is your name?"
name = gets.chomp

puts "Hello there, #{name}!"

#Asks user how many credits they would like to play with
puts "How many credits would you like to begin with? (minimum of 5 and must be a multiple of 5)"
amount = gets.chomp.to_i

#Run credits method
credits(amount)

#Run number picker method
puts "Please choose a number from 0-36"
selected_num = gets.chomp.to_i
num_picker(selected_num)


    puts "Please type 'spin' to spin the wheel to see which number gets generated or 'exit' to exit"
