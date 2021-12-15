

def credits(credit)

# credit = amount
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



def num_picker(selected_num)
    if selected_num < 0 || selected_num > 36 
        puts "Please select a number between 0 and 36".red
    
    elsif selected_num.between?(0,36)
            puts "Sorry that is not a number, please try again".red

    else
        puts "You have selected #{selected_num}".blue
    end
end



def credit_output(credit)
    puts "-------------------------------"
    puts "You have #{credit} credits"
    puts "-------------------------------"
end



def fancy_line
    puts "-------------------------------"
end



def congrats
    puts "Congrats you won!".blue
end




def unlucky
    puts "Unlucky this time, try again...".red
end




def num_validator
    if selected_num > 36 || selected_num < 0
        puts "Please enter a valid number"
    end
end

class InvalidNameError < StandardError
end

def validate_name(name)
    name = name.strip #Trim whitespace
   raise InvalidNameError, "Name must not be empty, please enter a valid name" if name.empty?
   name
end

class InvalidNumberError < StandardError
end

def valdate_number(selected_num)
    selected_num = selected_num
    raise InvalidNumberError, "You must enter a valid number between 0-36" if selected_num.between?(0,36) == false 
    raise InvalidNumberError, "You must enter a number" if Integer(selected_num)

end
        