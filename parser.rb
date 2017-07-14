require 'entry'
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
  def read_entry(entry_lines)

    entry = Entry.new

    entry_lines.each do | entry_line |

      digits_segments = entry_line.scan(/.{3}/)

      digits_segments.each_with_index do | digit_segment, digit_position |
        entry.add_segment(digit_segment, digit_position)
      end
    end

    entry
  end


end