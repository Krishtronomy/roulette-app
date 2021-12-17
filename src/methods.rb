
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


class InvalidNameError < StandardError
end

def validate_name(name)
    name = name.strip #Trim whitespace
   raise InvalidNameError, "Name must not be empty, please enter a valid name" if name.empty?
   name
end

# Progress bar for nice animation while number is generating.
def progress_bar
    0.step(100, 5) do |i|
        printf("\rProgress: [%-20s]", "=" * (i/5))
        sleep(0.08)
      end
end