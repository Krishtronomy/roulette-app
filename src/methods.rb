
# Conditional flow to catch if user enters incorrect number
def credits(credit)
    case 
        when credit < 5 
            puts "5 credits is the minimum"
        when credit % 5 != 0 
            puts "Please enter a credit that is a multiple of 5 (ie. 5,10,15 etc..)"
            credit = 0
        else
            puts "You have entered #{credit} credits"
    end
end


# Raise error when user enters incorrect selection for number
def num_validator(selected_num)
    if selected_num < 0 || selected_num > 36 
        raise ArgumentError
    elsif selected_num.between?(0,36) == false
        raise ArgumentError
    else
        puts "You have selected #{selected_num}".colorize(:blue)
    end
end


#Output how much credit the user currenty has
def credit_output(credit)
    puts "-------------------------------"
    puts "You have #{credit} credits".colorize(:green)
    puts "-------------------------------"
end


#Print a fancy line to display output to the terminal nicely
def fancy_line
    puts "-------------------------------"
end


#Print a congrats message 
def congrats
    puts "Congrats you won!".blue
end


#Print a unlucky message
def unlucky
    puts "Unlucky this time, try again...".colorize(:red)
end


#Inherits from standard error class to create custom error
class InvalidNameError < StandardError
end
# Raises error if user enters empty string for name
def validate_name(name)
    name = name.strip #Trim whitespace
   raise InvalidNameError, "Name must not be empty, please enter a valid name" if name.empty?
   name
end


def progress_bar
bar = TTY::ProgressBar.new("Generating [:bar]", total: 30)
30.times do
    sleep(0.03)
    bar.advance  # by default increases by 1
  end
end


def greeting 
font = TTY::Font.new(:doom)
pastel = Pastel.new
puts pastel.yellow(font.write("Welcome to Roulette"))
end



def total_spent(loss, wins, credit_select)

    total = (loss.count + wins.count) * 5
    puts "You spent a total of #{credit_select} credits and used a grand total of #{total} credits."
    
    case 
    when total <= 20
        puts "That is about how much a Movie Tickets costs.".colorize(:yellow)
    when total <= 50 
        puts "That is about how much a nice dinner costs.".colorize(:yellow)
    when total <= 100
        puts "That is around the same as a Domestic Flight.".colorize(:yellow)
    when total > 100
        puts "That could've been put towards a PS5."
    end
end




def win_count(wins)
    if wins.count == 1 && wins[0] == 1
       puts "You won a total of #{wins.count} time.".colorize(:blue)
    else 
        puts "You won a total of #{wins.count} times.".colorize(:green)
    end
end

def loss_count(num_list, wins)
    loss = num_list.count - wins.count
    puts "You lost a total of #{loss} times.".colorize(:red)
end
