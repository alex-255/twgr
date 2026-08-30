puts "Reading Fahrenheit temperature value from data file..."
fahrenheit = File.read("temp.dat").to_i
celsius = (fahrenheit - 32) * 5 / 9
puts "Saving result to output file 'temp.out'"
filehandler = File.new("temp.out", "w")
filehandler.puts celsius
filehandler.close