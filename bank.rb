require_relative 'parser'

class Bank

  def initialize(parser = Parser.new)
    @parser = parser
  end

  def read_file(filename)
    file_lines = File.readlines(filename)
    digits = @parser.read_digits_for_account(file_lines)

    digits.each do |d|
      puts d.to_s
    end
  end
end

bank = Bank.new
bank.read_file("./input/account.txt")
