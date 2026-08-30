puts "Reading Celsius temperature value from data file..."
celsius = File.read("temp.dat").to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
filehandler = File.new("temp.out", "w")
filehandler.puts fahrenheit
filehandler.close
