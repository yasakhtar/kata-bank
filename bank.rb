require_relative 'parser'
require_relative 'digit_converter'

class Bank

  def initialize(parser = Parser.new)
    @parser = parser
  end

  def read_file(filename)
    file_lines = File.readlines(filename)

    # change to read an entry from 4 file lines?
    digits = @parser.read_entry(file_lines)

    digits.each do |d|
      puts d.to_s
    end

    d = DigitConverter.new
    puts d
  end
end

bank = Bank.new
bank.read_file("./input/account.txt")
