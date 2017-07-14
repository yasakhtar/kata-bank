require_relative 'digit'

class Entry

  def initialize()
    @account_digits = []
  end

  def add_segent(digit_segment, digit_position)
    digit = get_digit_for_position(digit_position)
    digit.add_segment(digit_segment)
  end

  private

  def get_digit_for_position(pos)

    ensure_digit_exists_at_pos(pos)
    @account_digits[pos]

  end

  def ensure_digit_exists_at_pos(pos)
    @account_digits << Digit.new if digits.length <= pos
  end

end