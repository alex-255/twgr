# class Ticket
#   attr_reader :venue, :date, :price
#   attr_writer :price

#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end
# end

# class Ticket
class Ticket
  VENUES = ['Convention Center', 'Fairgrounds', 'Town Hall'] # rubocop:disable Style/MutableConstant
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    if VENUES.include?(venue) # rubocop:disable Style/GuardClause
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end

    @date = date
  end
end

def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new('Town Hall', '2025-11-12')
cc = Ticket.new('Convention Center', '2025-12-13')
fg = Ticket.new('Fairgrounds', '2025-10-11')
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}."

# puts "Testing the response of a ticket instance...."
# wrong = fg.most_expensive

puts "We've closed the class definition."
puts 'So we have to use the path notation to reach the constant.'
puts 'The venues are:'
puts Ticket::VENUES

Ticket::VENUES << 'High School Gym' # But frozzen array can't be modified.
puts 'The venues are:'
puts Ticket::VENUES
