

def credits(amount)

credit = amount
    case 
        when credit < 5 
            puts "5 credits is the minimum"
        when credit % 5 != 0 
            puts "Please enter a credit that is a multiple of 5 (ie. 20 or 50)"
        else
            puts "You have entered #{credit} credits"
    end
end



def num_picker(selected_num)
    if selected_num < 0 || selected_num > 36 
        puts "Please select a number between 0 and 36"
    else
        puts "You have selected #{selected_num}"
    end
end