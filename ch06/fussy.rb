# frozen_string_literal: true

def fussy_method(number)
  raise ArgumentError, 'I need a number under 10' unless number < 10
end

begin
  fussy_method(20)
rescue ArgumentError => e
  puts 'That was not an acceptable number!'
  puts "Here's the backtrace for this exception:"
  puts e.backtrace
  puts "And here's the exception object's message:"
  puts e.message
end
