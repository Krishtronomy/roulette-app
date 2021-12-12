require_relative './methods.rb'



#Asks user to input their name, and stores into name variable
puts "Welcome to the Roulette App, what is your name?"
name = gets.chomp


puts "Hello there, #{name}!"
#Asks user how many credits they would like to play with
puts "How many credits would you like to begin with? (minimum of 5 and must be a multiple of 5)"
credit = gets.chomp.to_i

#Run credits method
credits(credit)

# puts "You have chosen #{credit} credits, is this correct? (Enter yes to confirm, or 'exit' to leave)"
# confirmation = gets.chomp
loop do 

    if credit < 5 
        puts "Sorry you're out of credit, Goodbye..."
        fancy_line
        break
    end


#Run number picker method
puts "Please choose a number from 0-36"
selected_num = gets.chomp.to_i
fancy_line



num_picker(selected_num)



# Asks the user whether they want to spin or exit. If spin, programs runs through a conditional flow
puts "Please type 'spin' to spin the wheel to see which number gets generated or 'exit' to exit"
input = gets.chomp.to_s
fancy_line

if input == 'spin'
    rand(36).to_i
    rand_num = rand(36).to_i
    puts "#{rand_num} was generated"   
elsif input == 'exit'
    puts "Thanks for playing, goodbye.."
    credit_output(credit)
    break
else 
    puts "Not a valid input, please either enter spin or exit"
end


if rand_num == selected_num
    credit += 5
    credit_output(credit)
elsif rand_num != selected_num
    credit = (credit.to_i) - 5
    credit_output(credit)
end


end
