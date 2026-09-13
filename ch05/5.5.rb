# frozen_string_literal: true

# This is a simple example of a class
# that has a method that takes a
# parameter.
#
# Author:: <NAME> (mailto:<EMAIL>)
#
# License:: http://www.opensource.org/licenses/mit-license.html  (MIT License)
class C
  def x(value_for_a, recurse = false) # rubocop:disable Style/OptionalBooleanParameter,Metrics/MethodLength
    a = value_for_a                        # 2 # rubocop:disable Layout/ExtraSpacing
    print "Here's the inspect-string for 'self':"
    p self
    p object_id
    puts "And here's a:"
    puts a
    puts a.object_id
    if recurse # rubocop:disable Style/GuardClause
      puts 'Calling myself (recursion)...'
      x('Second value for a')
      puts "Back after recursion; here's a:"
      puts a
      puts a.object_id
    end
  end
end
c = C.new
c.x('First value for a', true)
