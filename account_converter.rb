require_relative 'account'

class AccountConverter

  # handle the 4 lines for an account - returns the list of digits in the account.
  def to_account(account_lines)
    
    account = Account.new
    
    account_lines.each do | account_line |
      
      digits_in_line = split_account_line_into_digits(account_line)

      digits_in_line.each_with_index do | digit_line, digit_position |
        account.add_digit_line(digit_line, digit_position)
      end
    end
    
    account
  end
  
  private
  
  def split_account_line_into_digits(account_line)
    account_line.scan(/.{3}/)
  end
  
end