


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
        puts "Please select a number between 0 and 36"
    else
        puts "You have selected #{selected_num}"
    end
end



# def random_num(selected_num)
#     puts "Please type 'spin' to spin the wheel to see which number gets generated or 'exit' to exit"
#     input = gets.chomp.to_s

#     if input == 'spin'
#         rand(36).to_i
#         rand_num = rand(36).to_i
#         puts "#{rand_num} was generated"   
    
#     elsif input == 'exit'
#         puts "Thanks for playing, goodbye.."

#     else "Not a valid input, please either enter spin or exit"
#     end

   
# end


# def credit_adder(credit)

#     while rand_nums == selected_num
#         credit += 5
#     puts credit
# end

def credit_output(credit)
    puts "-------------------------------"
    puts "You have #{credit} credits"
    puts "-------------------------------"
end

def fancy_line
    puts "-------------------------------"
end


# def random_range(range)
#     if 
#         input == 'multi' &&  selected_num 0..12
#         credit += 5
#     elsif 
#         input == 'multi' &&  selected_num 13..24
#         credit += 5
#     elsif
#         input == 'multi' &&  selected_num 25..36
#         credit += 5
#     else 
#         credit = (credit.to_i) - 5
#     end

# end