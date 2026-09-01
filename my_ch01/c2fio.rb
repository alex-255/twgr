require "colorize"

puts "Reading Celsius temperature value from data file...".yellow
celsius = File.read("temp.dat").to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'".blue
filehandler = File.new("temp.out", "w")
filehandler.puts fahrenheit
filehandler.close
