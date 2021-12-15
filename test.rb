puts "Please choose a number from 0-36"
selected_num = Integer(gets.chomp)

if selected_num.between?(0,36) == false
    raise ArgumentError
end