require_relative 'digit'

class Parser

  LINES_PER_ACCOUNT = 4;

  # handle the lines in the file. Break into groups of 4 and then read the digits for each of these.
  def parse_all_file_lines(all_file_lines)
    account_lines_list = all_file_lines.each_slice(LINES_PER_ACCOUNT)

    accounts = []

    account_lines_list.each do | account_lines |
      account_digits = read_digits_from_account_lines(account_lines)
      accounts << account_digits
    end

    accounts
  end

  # handle the 4 lines for an account - returns the list of digits in the account.
  def read_digits_for_account(account_lines)

    account_digits = []

    account_lines.each do | account_line |

      digits_in_line = account_line.scan(/.{3}/)

      digits_in_line.each_with_index do | digit_line, pos |
        digit = get_digit_for_position(account_digits, pos)
        digit.add_line(digit_line)
      end
    end

    account_digits
  end

  def get_digit_for_position(digits, pos)

    digits << Digit.new if digits.length <= pos
    digits[pos]

  end

end