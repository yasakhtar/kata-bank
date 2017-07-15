require_relative 'digit'

class Account

  attr_reader :digits
  
  def initialize
    @digits = []
  end

  def add_digit_line(digit_segment, digit_position)
    digit = get_digit_for_position(digit_position)
    digit.add_line(digit_segment)
  end

  def to_account_number
    @digits.inject('') { | result, d | result << d.to_account_string }
  end

  private

  def get_digit_for_position(pos)
    ensure_digit_exists_at_pos(pos)
    @digits[pos]

  end

  def ensure_digit_exists_at_pos(pos)
    @digits << Digit.new if @digits.length <= pos
  end

end