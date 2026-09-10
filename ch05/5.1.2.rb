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
