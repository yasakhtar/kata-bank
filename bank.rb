require_relative 'parser'
require_relative 'digit_converter'

class Bank

  def initialize(parser = Parser.new)
    @parser = parser
  end

  def read_file(filename)

    file_lines = File.readlines(filename)

    #change needed to read multiple entries
    entry = @parser.read_entry(file_lines)

    # entry.digits.each do |d|
    #   puts d.to_s
    # end

    entry
  end
end

bank = Bank.new
entry = bank.read_file("./input/account.txt")

s = entry.to_account_number
puts s
# d_string = d.to_s
# k_string = k.to_s


# puts 'digit'
# d_string.each_byte do |b|
#   puts b
# end
# 
# puts 'key'
# k_string.each_byte do |b|
#   puts b
# end


