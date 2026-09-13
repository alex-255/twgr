# frozen_string_literal: true

#  This is a class for a car.
class Car
  @@makes = [] # rubocop:disable Style/ClassVars
  @@cars = {} # rubocop:disable Style/ClassVars
  @@total_count = 0 # rubocop:disable Style/ClassVars
  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make) # rubocop:disable Style/GuardClause
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make) # rubocop:disable Style/GuardClause
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      @@total_count += 1 # rubocop:disable Style/ClassVars
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make] # rubocop:disable Style/RedundantSelf
  end
end
