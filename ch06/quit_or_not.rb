# frozen_string_literal: true

def quit_or_not # rubocop:disable Metrics/MethodLength
  print 'Exit the program? (yes or no): '
  answer = gets.chomp.downcase
  case answer
  when 'yes', 'y'
    puts 'Good-bye!'
    exit
  when 'no', 'n'
    puts "OK, we'll continue"
  else
    puts "That's an unknown answer -- I'm assuming you meant 'no'"
  end
  puts 'Continuing with program....'
  quit_or_not
end
quit_or_not
