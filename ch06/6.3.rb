# frozen_string_literal: true

class Temperature # rubocop:disable Style/Documentation
  def self.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
end
celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
puts "Celsius\tFahrenheit"
for c in celsius # rubocop:disable Style/For
  puts "#{c}\t#{Temperature.c2f(c)}"
end
