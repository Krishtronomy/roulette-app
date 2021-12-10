puts "Welcome to the Roulette App, what is your name?"
name = gets.chomp

puts "Hello there, #{name}!"

puts "How many credits would you like to begin with? (minimum of 5 and must be a multiple of 5)"
amount = gets.chomp.to_i
credit = amount

case 
    when credit < 5 
        puts "5 credits is the minimum"
    when credit % 5 != 0 
        puts "Please enter a credit that is a multiple of 5 (ie. 20 or 50)"
    else
        puts "You have entered #{credit} credits"
    end

    puts "Please choose a number from 0-36"
    selected_num = gets.chomp.to_i

    if selected_num < 0 || selected_num > 36 
        puts "Please select a number between 0 and 36"
    else
        puts "You have selected #{selected_num}"
    end

    puts "Please spin the wheel to see which number gets generated"
    spin = rand(36).to_i
    puts "#{spin} was generated"

    if spin == selected_num
        puts "Congratulations, you now have #{credit + 5} credits!"
        credit += 5
    elsif spin != selected_num
        puts "Unlucky this time! Would you like to spin again?"
    end