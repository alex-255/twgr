# frozen_string_literal: true

# class Ticket
class Ticket
  attr_accessor :venue, :date, :name

  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.date == other_ticket.date # rubocop:disable Style/RedundantSelf
  end
end
ticket1 = Ticket.new('Town Hall', '07/08/25')
ticket2 = Ticket.new('Conference Center', '07/08/25')
ticket3 = Ticket.new('Town Hall', '08/09/25')
puts "ticket1 is for an event on: #{ticket1.date}."
case ticket1
when ticket2
  puts 'Same date as ticket2!'
when ticket3
  puts 'Same date as ticket3!'
else
  puts 'No match.'
end
