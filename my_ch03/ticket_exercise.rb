class Ticket
  def initialize(venue)
    @venue = venue
  end

  def venue 
    @venue
  end

  def date=(date)
    year, month, day = date.split("-")
    if year.to_i < 100 
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    else
      @date = date
    end
  end

  def date
    @date
  end

  def price=(price)
    @price = price
  end

  def price
    @price
  end

  def discount(percent)
    @price * (100 - percent) / 100
  end
end

ticket = Ticket.new("Town Hall")
ticket.date = "2025-11-12"
# ticket.date = "25-11-12"
ticket.price = 100.00

puts "The ticket's price is $#{ticket.price}."
puts "Date: #{ticket.date}."
puts "The ticket for #{ticket.venue} has been discounted 15% to $#{"%.2f" % ticket.discount(15)}."
puts "The ticket's price is $#{ticket.price}."