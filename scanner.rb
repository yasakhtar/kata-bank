require_relative 'account_converter'

class Scanner

  LINES_PER_ACCOUNT = 4;
  
  def initialize(account_converter = AccountConverter.new)
    @account_converter = account_converter
  end
  
  def scan_file(filename)
    lines_in_file = File.readlines(filename)
    lines_grouped_per_account = group_lines_per_account(lines_in_file)
    
    accounts = []
    
    lines_grouped_per_account.each do |account_lines|
      account = @account_converter.to_account(account_lines)
      accounts << account
    end
    
    accounts
  end
  
  def group_lines_per_account(lines_in_file)
    lines_in_file.each_slice(LINES_PER_ACCOUNT)
  end
  
end