#Command line arguments

if ARGV.length > 0
    flag, *rest = ARGV
    ARGV.clear
    case flag
    when "--help" 
        puts "- A simple roulette game which requires input from the user."
        puts "- Game is operated using the keyboard for input and arrow keys to make a selection on the menu."
        puts "- Range refers to 3 ranges of number, 0-12, 13-25 or 25-36. When Range is selected and if user inputs any number within this range, the corresponding range will automatically be selected."
        puts "- Spin refers to guessing the exact number correctly and rewards a bonus of 20 points."
        puts "- To exit the game, please select Exit on the menu selection, alternatively you can press ctrl + C on your keyboard."
        puts "- For more info, please visit the documentation at https://github.com/Krishtronomy/roulette-app"
        exit
    when "--info" 
        puts "Created December 2021 by Krishal Kumar | https://github.com/Krishtronomy"
        exit
    when "--version"
        puts "This program is running ruby #{RUBY_VERSION}"
        exit
    end
end