require "colorize"
require "debug"

puts "Reading Celsius temperature value from data file...".yellow
num = File.read("temp.dat")
binding.break
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'".blue
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
