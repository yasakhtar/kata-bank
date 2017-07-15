require_relative 'scanner'

class Bank

  def initialize(scanner = Scanner.new)
    @scanner = scanner
  end

  def read_file(filename)
      accounts = @scanner.scan_file(filename)
      accounts
  end
end

bank = Bank.new
accounts = bank.read_file("./input/account.txt")

accounts.each do |account|
  puts "#{account.to_account_number} #{account.status}"
end
