require_relative './methods.rb'
require('colorize')
require('tty-prompt')
require('artii')
require('tty-spinner')
require('tty-progressbar')
require('tty-font')
require('pastel')

prompt = TTY::Prompt.new
a = Artii::Base.new
wins = []
loss = []
num_list = []
total = []

#Asks user to input their name, and stores into name variable
# puts a.asciify("Welcome")
# puts a.asciify("to")
# puts a.asciify("Roulette")
greeting
begin
puts "What is your name?".colorize(:blue)
name = gets.chomp
validate_name(name)
puts "Hello there, #{name}!".colorize(:yellow)
rescue InvalidNameError 
    puts "Please enter a valid name"
    retry
end


#Asks user how many credits they would like to play with
credit_select = prompt.select("How many credits would you like to begin with?", %w(20 50 100)).to_i
credit = credit_select.to_i

# total = []
# total.push(num_list)
# puts total
# while num_list.length > 0
#     total.each do |num|
#         num = 5
       
#         length = num_list.length
#         total = num * length
#         puts "Total spent is #{total}"
#         if credit < 5 
#             puts "Sorry you're out of credit, Goodbye...You have spent a total of #{total}"
#         end
#     end
# end

#Run credits method
credits(credit)

# Loop breaks to exit program once user is out of credit
loop do 
    if credit < 5       
     win_count(wins)
     loss_count(num_list, wins)
     total_spent(loss, wins, credit_select)
        fancy_line
        break
    end



# Asks the user whether they want to Spin or Exit. If Spin, programs runs through a conditional flow to determine outcome
guess = prompt.select("Please select whether you would like to Spin to guess a specific number for a bigger return, or select to guess within any of the three Ranges (0-12, 13-24, 25-36)", %w(Spin Range Exit))
input = guess.to_s
fancy_line


if input == 'Exit'
    puts "Thanks for playing, goodbye.."
    credit_output(credit)
    Exit
end

begin
puts "Please select a number between 0 and 36"
selected_num = Integer(gets.chomp)
fancy_line
num_validator(selected_num)
rescue ArgumentError
    puts "Your input is not a number thats between 0 and 36, please try again...".colorize(:red)
    retry
end

if input == 'Spin' || input == 'Range'
    rand(36).to_i
    rand_num = rand(36).to_i 
    num_list << rand_num
    progress_bar  
    
    puts "#{rand_num} was generated".colorize(:light_blue)
else 
    puts "Not a valid input, please either enter Spin, Range or Exit"
end

puts "The previous numbers have been: #{num_list}".colorize(:light_green)

if input == 'Spin' && rand_num == selected_num
    credit += 20
    congrats
    wins << 1
    credit_output(credit)
elsif input == 'Spin' && rand_num != selected_num
    credit = (credit.to_i) - 5
    unlucky
    loss << 1
    credit_output(credit)
elsif 
        input == 'Range' && rand_num.between?(0,12) == true && selected_num.between?(0,12)
        credit += 5
        congrats
        wins << 1
        credit_output(credit)
    elsif 
        input == 'Range' &&  rand_num.between?(13,24) == true && selected_num.between?(13,24)
        credit += 5
        congrats
        wins << 1
        credit_output(credit)
    elsif
        input == 'Range' &&  rand_num.between?(25,36) == true && selected_num.between?(25,36)
        credit += 5
        congrats
        wins << 1
        credit_output(credit)
    elsif
        input == 'Range' && rand_num != selected_num && rand_num.between?(0,36) == true && selected_num.between?(0,36)
        credit = (credit.to_i) - 5
        unlucky
        loss << 1
        
        credit_output(credit)
    else
        "Not a valid input, please try again"

end

end

