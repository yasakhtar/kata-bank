require_relative 'account'

class AccountConverter

  # handle the 4 lines for an account - returns the list of digits in the account.
  def to_account(account_lines)
    
    @digits = []
    
    account_lines.each do | account_line |
      
      digits_in_line = split_account_line_into_digits(account_line)

      digits_in_line.each_with_index do | digit_line, digit_position |
        add_digit_line(digit_line, digit_position)
      end
    end
    
    Account.new(@digits)
  end

  def add_digit_line(digit_segment, digit_position)
    digit = get_digit_for_position(digit_position)
    digit.add_line(digit_segment)
  end
  
  private
  
  def split_account_line_into_digits(account_line)
    account_line.scan(/.{3}/)
  end

  def get_digit_for_position(pos)
    ensure_digit_exists_at_pos(pos)
    @digits[pos]
  end

  def ensure_digit_exists_at_pos(pos)
    @digits << Digit.new if @digits.length <= pos
  end

end