# frozen_string_literal: true

# Just an example from the book (twgr).
module MyFirstModule
  def greet
    puts 'Hello!'
  end
end

class ModuleTester
  include MyFirstModule
end
mt = ModuleTester.new
mt.greet
