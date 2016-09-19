require 'date'
require_relative 'statement'

class Account

  DEFAULT_BALANCE = 0
  DEFAULT_TRANSACTION = 0

  attr_reader :balance, :current_date


  def initialize(statement)
    @balance = DEFAULT_BALANCE
    @current_date = Date.today.to_s
  end

  def debit(value, statement)
    @balance -= value
    statement.history << {"date" => current_date, "credit" => DEFAULT_TRANSACTION, "debit" => value, "balance" => @balance}
  end

  def credit(value, statement)
    @balance += value
    statement.history << {"date" => current_date, "credit" => value, "debit" => DEFAULT_TRANSACTION, "balance" => @balance}
  end

  def get_statement(statement)
    statement.print_statement
  end

end
