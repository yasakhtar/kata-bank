require_relative 'scanner'
require_relative 'digit_converter'

class Bank

  def initialize(scanner = Scanner.new)
    @scanner = scanner
  end

  def read_file(filename)

    file_lines = File.readlines(filename)

    #change needed to read multiple entries
    entry = @scanner.scan_line(file_lines)

    # entry.digits.each do |d|
    #   puts d.to_s
    # end

    entry
  end
end

bank = Bank.new
entry = bank.read_file("./input/account.txt")

puts entry.to_account_number

# entry.digits.each do |k|
#   puts "#{k.to_s} #{k.to_s.length}"
# end
# 
# d = DigitConverter.new
# puts d.digits_hash
# puts d.digits_hash.count
# d.digits_hash.each do |k,v|
#   puts "#{k} #{k.length}"
# end


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
