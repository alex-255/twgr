# frozen_string_literal: true

# A bank account class
class Account
  attr_accessor :balance

  def initialize(amount = 0)
    self.balance = amount
  end

  def +(x) # rubocop:disable Naming/MethodParameterName,Naming/BinaryOperatorParameterName
    self.balance += x
  end

  def -(x) # rubocop:disable Naming/MethodParameterName,Naming/BinaryOperatorParameterName
    self.balance -= x
  end

  def to_s
    balance.to_s
  end
end
acc = Account.new(20)
acc -= 5
puts acc
