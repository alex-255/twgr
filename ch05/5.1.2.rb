# frozen_string_literal: true

# class C -- example of self from an instance.
class C
  def x
    puts 'Class C, method x:'
    puts self
  end
end
c = C.new
c.x
puts "That was a call to x from: #{c}"

puts

obj = Object.new
def obj.show_me
  puts "Inside singleton method show_me of #{self}"
end
obj.show_me
puts "Back from call to show_me by #{obj}"
