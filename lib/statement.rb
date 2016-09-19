require 'date'
require_relative 'account'

class Statement

  attr_reader :history
  attr_accessor :history

  def initialize
    @history = []
  end

  def print_statement
    puts "Date || Credit || Debit || Balance "
    @history.each do |transaction|
      puts transaction.values.join(' || ')
    end
  end

end
