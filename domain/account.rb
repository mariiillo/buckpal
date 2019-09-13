# frozen_string_literal: true

# Entity to represent a Account.
class Account
  attr_reader :id, :balance

  def initialize(id:, balance:)
    @id = id
    @balance = balance
  end

  def withdraw(amount:, target_account:)
    return false unless may_withdraw(amount: amount)

    @balance -= amount
    target_account.deposit(amount)
    self
  end

  def deposit(amount:)
    @balance += amount
    self
  end

  private

  def may_withdraw(amount:)
    (@balance - amount) > 0
  end
end
