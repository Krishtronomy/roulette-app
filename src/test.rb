require('ruby-progressbar')
require('tty-font')
require('pastel')

font = TTY::Font.new(:doom)

pastel = Pastel.new
puts pastel.green(font.write("DOOM"))
