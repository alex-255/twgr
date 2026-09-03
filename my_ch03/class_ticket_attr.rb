# class Ticket
#   attr_reader :venue, :date, :price
#   attr_writer :price

#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end
# end

class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end