require_relative './methods.rb'
require('colorize')
require('tty-prompt')
require('roulette-wheel-selection')

prompt = TTY::Prompt.new


#Asks user to input their name, and stores into name variable
begin
puts "Welcome to the Roulette App, what is your name?".yellow
name = gets.chomp
validate_name(name)
puts "Hello there, #{name}!".blue
rescue InvalidNameError => e
    puts "An error occurred: #{e.inspect}"
    retry
end


#Asks user how many credits they would like to play with
credit_select = prompt.select("How many credits would you like to begin with?", %w(20 50 100)).to_i
credit = credit_select.to_i

#Run credits method
credits(credit)


loop do 

    if credit < 5 
        puts "Sorry you're out of credit, Goodbye..."
        fancy_line
        break
    end



# Asks the user whether they want to spin or exit. If spin, programs runs through a conditional flow
guess = prompt.select("Please select whether you would like to spin to guess a specific number for a bigger return, or select to guess within any of the three ranges (0-12, 13-24, 25-36)", %w(spin range exit))
input = guess.to_s
fancy_line


if input == 'exit'
    puts "Thanks for playing, goodbye.."
    credit_output(credit)
    exit
end

begin
puts "Please select a number between 0 and 36"
selected_num = Integer(gets.chomp)
fancy_line
num_validator(selected_num)
rescue ArgumentError
    puts "Your input is not a number thats between 0 and 36, please try again...".red
    retry
end

if input == 'spin' || input == 'range'
    rand(36).to_i
    rand_num = rand(36).to_i 
    puts "#{rand_num} was generated"
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

