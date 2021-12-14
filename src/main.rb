require_relative './methods.rb'
require('colorize')
require('tty-prompt')
require('roulette-wheel-selection')

prompt = TTY::Prompt.new


#Asks user to input their name, and stores into name variable
puts "Welcome to the Roulette App, what is your name?".yellow
name = gets.chomp


puts "Hello there, #{name}!".blue
#Asks user how many credits they would like to play with
credit = prompt.select("How many credits would you like to begin with?", %w(20 50 100)).to_i
# credit = gets.chomp.to_i

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



# Asks the user whether they want to spin or exit. If spin, programs runs through a conditional flow
puts "Please type 'spin' to guess a specific number, 'range' to select a number within a range (0-12, 13-25 or 25-36)"
input = gets.chomp.to_s
fancy_line


puts "Please choose a number from 0-36"
selected_num = gets.chomp.to_i
fancy_line



num_picker(selected_num)

if input == 'spin' || input == 'range'
    rand(36).to_i
    rand_num = rand(36).to_i 
    puts "#{rand_num} was generated"
elsif input == 'exit'
    puts "Thanks for playing, goodbye.."
    credit_output(credit)
    break
else 
    puts "Not a valid input, please either enter spin, range or exit"
end


if input == 'spin' && rand_num == selected_num
    credit += 20
    congrats
    credit_output(credit)
elsif input == 'spin' && rand_num != selected_num
    credit = (credit.to_i) - 5
    unlucky
    credit_output(credit)
elsif 
        input == 'range' && rand_num.between?(0,12) == true && selected_num.between?(0,12)
        credit += 5
        congrats
        credit_output(credit)
    elsif 
        input == 'range' &&  rand_num.between?(13,24) == true && selected_num.between?(13,24)
        credit += 5
        congrats
        credit_output(credit)
    elsif
        input == 'range' &&  rand_num.between?(25,36) == true && selected_num.between?(25,36)
        credit += 5
        congrats
        credit_output(credit)
    elsif
        input == 'range' && rand_num != selected_num && rand_num.between?(0,36) == true && selected_num.between?(0,36)
        credit = (credit.to_i) - 5
        unlucky
        credit_output(credit)
    else
        "Not a valid input, please try again"

end

end

