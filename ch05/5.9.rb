# frozen_string_literal: true

# class C
class C
  def initialize(n) # rubocop:disable Naming/MethodParameterName
    @n = n
  end

  def n # rubocop:disable Style/TrivialAccessors
    @n
  end

  def compare(c) # rubocop:disable Naming/MethodParameterName
    if c.n > n
      puts "The other object's n is bigger."
    else
      puts "The other object's n is the same or smaller."
    end
  end
  protected :n
end
c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)
